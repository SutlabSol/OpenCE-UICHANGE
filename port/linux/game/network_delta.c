/* Delta cross-play, a client's half (network.delta): joining a game whose
host speaks Delta Peer (Chupathingy's hosts, and any other that follows the
open network spec, github.com/ChupathingyCE/delta-spec: ports.md, "The
short version"). The game itself is the plain game protocol at this build's
network version, so nothing here is needed to play: it tells the host what
this machine is, so that the host keeps the game to its limits.

- The advertisement's reserved bytes say whether a host speaks Delta (a tag
  at their end, or an older host's layout: delta_ref.c's dref_advert_read).
- Joining such a host, the join request's machine name is marked past its
  end (peer.md, "The join mark"), so the host waits for this machine's
  HELLO before it sends the game's settings.
- Once the host has given this machine its index, HELLO goes from a socket
  of its own to the host's address, at the host's game port plus 10 (5160),
  every 500 milliseconds, offering the platform capability alone, with this
  machine's platform key and network version. A WELCOME within 4 seconds and
  this machine speaks Delta Peer for the game; LEGACY, BYE or nothing, and
  it plays plainly, as it would have anyway. The game never waits on it.
- Leaving, a host that welcomed it is told BYE.

delta_ref.c and delta_ref.h are the spec's reference client (MIT,
LICENSES/MIT.txt), as they are in the spec's reference/ folder. A host of
this build writes no Delta tag and answers no HELLO: Delta's clients join it
by its network version, as they join any host. */
#include "cseries.h"
#include "cseries/cseries_windows.h"
#include "bungie_net/network/transport.h"
#include "bungie_net/network/transport_endpoint_winsock.h"
#include "memory/byte_swapping.h"
#include "networking/network_messages.h"
#include "delta_ref.h"
#include "network_delta.h"
#include "halo_port_limits.h"
#include <stdio.h>
#include <string.h>

int config_boolean(char const *name);
unsigned long config_changes(void);
extern const int halo_build_number;

enum
{
	/* network_client_manager.c's MAXIMUM_NETWORK_ADVERTISED_GAMES, at least */
	DELTA_ADVERTISED_GAMES = 16,
	/* the machine name's 16-bit characters (MAXIMUM_MACHINE_NAME_LENGTH) */
	DELTA_MACHINE_NAME_LENGTH = 32,
};

/* this platform's number (registry.md, "Platforms"): per platform, not per
project; 0 where the registry has none for this build yet */
#if defined(HALO_MACOS)
#define DELTA_PLATFORM 2
#elif defined(HALO_SWITCH)
#define DELTA_PLATFORM 9
#elif defined(HALO_WEB) || defined(HALO_PS5)
#define DELTA_PLATFORM 0
#elif defined(HALO_ANDROID)
#define DELTA_PLATFORM 4
#elif defined(_WIN32)
#define DELTA_PLATFORM 1
#else
#define DELTA_PLATFORM 3
#endif

static struct
{
	boolean speaks[DELTA_ADVERTISED_GAMES];
	/* the game being joined speaks Delta (and network.delta is on) */
	boolean joining;
	boolean started;
	SOCKET socket;
	/* the host's address and Delta port, in network byte order */
	unsigned long host_address;
	word host_port;
	int told_state;
	struct dref_client client;
} delta = { { 0 }, FALSE, FALSE, INVALID_SOCKET };

static boolean delta_enabled(void)
{
	static unsigned long read_at = (unsigned long)-1;
	static boolean enabled = TRUE;

	if (read_at != config_changes())
	{
		read_at = config_changes();
		enabled = config_boolean("network.delta") != 0;
	}
	return enabled;
}

void network_delta_advertised(long game_index, byte const *reserved, long size)
{
	struct dref_advert advert;

	if (game_index < 0 || game_index >= DELTA_ADVERTISED_GAMES)
		return;
	delta.speaks[game_index] = dref_advert_read(reserved, (int)size, &advert) && advert.speaks_delta;
}

boolean network_delta_speaks(long game_index)
{
	return game_index >= 0 && game_index < DELTA_ADVERTISED_GAMES && delta.speaks[game_index];
}

void network_delta_join_started(long game_index)
{
	network_delta_stop();
	delta.joining = network_delta_speaks(game_index) && delta_enabled();
}

void network_delta_mark_join(wchar_t *machine_name, long count)
{
	uint16_t name[DELTA_MACHINE_NAME_LENGTH];
	long index;

	if (!delta.joining || count != DELTA_MACHINE_NAME_LENGTH)
		return;
	for (index = 0; index < count; index++)
		name[index] = (uint16_t)machine_name[index];
	if (!dref_join_mark(name, (int)count))
		return;
	for (index = 0; index < count; index++)
		machine_name[index] = (wchar_t)name[index];
}

static void delta_send(void *user, const uint8_t *data, int size)
{
	struct sockaddr_in to;

	(void)user;
	if (delta.socket == INVALID_SOCKET)
		return;
	csmemset(&to, 0, sizeof(to));
	to.sin_family = AF_INET;
	to.sin_addr.s_addr = delta.host_address;
	to.sin_port = delta.host_port;
	sendto(delta.socket, (char const *)data, size, 0, (struct sockaddr *)&to, sizeof(to));
}

void network_delta_accepted(short machine_index, unsigned long host_address, word host_port)
{
	struct sockaddr_in local;
	unsigned long nonblocking = 1;
	struct dref_hello mine;
	unsigned long session = 0;

	if (!delta.joining || delta.started)
		return;
	delta.socket = socket(AF_INET, SOCK_DGRAM, 0);
	if (delta.socket == INVALID_SOCKET)
		return;
	/* (bound, so that internet play's tunnel brings the host's answers to it) */
	csmemset(&local, 0, sizeof(local));
	local.sin_family = AF_INET;
	local.sin_addr.s_addr = INADDR_ANY;
	if (bind(delta.socket, (struct sockaddr *)&local, sizeof(local)) != 0 ||
		ioctlsocket(delta.socket, FIONBIO, &nonblocking) != 0)
	{
		closesocket(delta.socket);
		delta.socket = INVALID_SOCKET;
		return;
	}
	delta.host_address = SWAP4(host_address);
	delta.host_port = (word)SWAP2((word)(host_port + DREF_PORT_OFFSET));

	csmemset(&mine, 0, sizeof(mine));
	mine.capabilities = 1u << DREF_CAP_PLATFORM;
	mine.legacy_version = HALO_PORT_NETWORK_VERSION;
	mine.machine_index = (uint8_t)machine_index;
	mine.table_serial = DREF_NO_TABLES;
	mine.key.platform = DELTA_PLATFORM;
	mine.key.version = 1;
	mine.key.host_players = HALO_PORT_MAXIMUM_NETWORK_PLAYERS;
	mine.key.join_players = HALO_PORT_MAXIMUM_NETWORK_PLAYERS;
	mine.key.join_players_opt_in = HALO_PORT_MAXIMUM_NETWORK_PLAYERS;
	snprintf(mine.build, sizeof(mine.build), "content-evolved %d", halo_build_number);
	XNetRandom((unsigned char *)&session, sizeof(session));
	delta.started = TRUE;
	delta.told_state = DREF_CLIENT_WAITING;
	network_event("delta: saying HELLO to the host (platform %d, network version %d)", DELTA_PLATFORM,
		HALO_PORT_NETWORK_VERSION);
	dref_client_start(&delta.client, &mine, (uint32_t)session, (uint32_t)system_milliseconds(), delta_send, NULL);
}

void network_delta_update(void)
{
	uint8_t datagram[DREF_MAXIMUM_DATAGRAM];
	uint32_t now;
	int count;

	if (!delta.started)
		return;
	now = (uint32_t)system_milliseconds();
	/* (every datagram this frame: those not from the host's Delta port are dropped) */
	for (count = 0; count < 16; count++)
	{
		struct sockaddr_in from;
		int from_size = sizeof(from);
		int size = recvfrom(delta.socket, (char *)datagram, sizeof(datagram), 0, (struct sockaddr *)&from, &from_size);

		if (size <= 0)
			break;
		if (from_size < (int)sizeof(from) || from.sin_family != AF_INET ||
			from.sin_addr.s_addr != delta.host_address || from.sin_port != delta.host_port)
		{
			continue;
		}
		dref_client_receive(&delta.client, now, datagram, size);
	}
	dref_client_tick(&delta.client, now);
	if (delta.client.state != delta.told_state)
	{
		delta.told_state = delta.client.state;
		if (delta.client.state == DREF_CLIENT_DELTA)
			network_event("delta: the host welcomed this machine (%s, capabilities %08lx)", delta.client.host.build,
				(unsigned long)delta.client.agreed);
		else if (delta.client.state == DREF_CLIENT_LEGACY)
			network_event("delta: no WELCOME from the host; playing plainly");
	}
}

void network_delta_stop(void)
{
	if (delta.started)
	{
		dref_client_stop(&delta.client);
		delta.started = FALSE;
	}
	if (delta.socket != INVALID_SOCKET)
	{
		closesocket(delta.socket);
		delta.socket = INVALID_SOCKET;
	}
	delta.joining = FALSE;
}
