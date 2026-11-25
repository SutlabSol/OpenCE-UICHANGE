#ifndef NETWORK_DELTA_H
#define NETWORK_DELTA_H
#include "cseries.h"
/* Delta cross-play, a client's half (network.delta: network_delta.c) */
void network_delta_advertised(long game_index, byte const *reserved, long size);
boolean network_delta_speaks(long game_index);
void network_delta_join_started(long game_index);
void network_delta_mark_join(wchar_t *machine_name, long count);
void network_delta_accepted(short machine_index, unsigned long host_address, word host_port);
void network_delta_update(void);
void network_delta_stop(void);
#endif
