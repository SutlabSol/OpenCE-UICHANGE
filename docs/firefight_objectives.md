# Firefight objectives (plan)

2026-11-21. Being built in `port/linux/game/firefight_objectives.c`. A design
agreed in discussion; items marked **(proposed)** are suggestions not yet
confirmed, and **Open** lists what is still to decide.

## Renamed 2026-11-21: waves and rounds, not rounds and sets

What this plan calls a **round objective** is a **wave objective**: rolled as
each wave starts, decided when that wave is cleared. What it calls a **set
objective** is a **round objective**: rolled once a round, starting at its 1st
or 2nd wave, lasting until the round ends. Its time is the round's waves (3) ×
the NEXT WAVE timer, so holds and the Rescue drain are 3 × 60 s / 4 = 45 s.
The code and config.toml keys keep the old names (`round_*` for the wave
objective, `set_*` for the round objective); only what players see changed.
Kill goals are about half the old per-round ones; USE ONLY's rule holds 12 s
after its pods drop.

## Decided 2026-11-21

- **Set time** = rounds in a set (5) × the round time limit, the NEXT WAVE
  timer (60 s when the waves aren't timed). **Hold times** (Data Link,
  Oddball) and the **Rescue drain** are a quarter of it: 5 × 60 s / 4 = 1:15.
- **Rescue**: the marines spawn at full health, as the enemies do. Their
  "life" is a bar that empties in a quarter of the set time while no player
  is near; it stops once a player arrives, and never hurts them. When it
  empties first, they die. After arriving, the attackers spawn and the
  damage reduction below applies.
- **A set objective lasts until its set ends.** A round ending does nothing
  to it.
- **Points**: a set amount for now (see Rewards). Leaderboards keep scores
  as they are.

## Goal

Optional objectives that run alongside a Firefight match, so a round asks for
more than surviving the waves. They are not a Firefight variant: every
variant (SOLO, MULTIPLAYER, Fiesta, Floodfight, the generator modes) plays as
it does now, and objectives are an extra layer the host turns on.

- **Round objectives**: a challenge for one round. No world placement, works
  on any map.
- **Set objectives**: a set piece somewhere on the map, at most one per set.
- Both kinds can run at the same time.
- Only multiplayer maps are in scope. Campaign maps are not considered.
- The existing timed bonus round (`in_bonus_round`, `firefight_bonus_seconds`)
  is a different thing; code and menus say "objective", never "bonus".

## Rolls

At the start of each round (in `firefight_begin_pre_round`, before the first
wave spawns):

- **Round objective**: with chance `round_chance` (default **50%**), one
  objective is picked at random from the enabled ones this map supports.
- **Set objective**: once per set, with chance `set_chance` (default **80%**).
  When it rolls, it starts at a random round of the set other than the first
  **(proposed)**.
- No round or set objective is rolled during the bonus round **(proposed)**.

Both chances can be changed in the settings.

## Shared rules

- **Shared by the whole team.** In co-op every player gets the same
  objective, and everyone's progress counts toward it (5 headshots means 5
  between all players).
- **Players who join mid-round** are not counted for that round: their
  actions don't add progress, don't break rules, and they aren't in any
  "half the players" count. They count from the next round.
- **Rule breaks are announced** to every player, naming who broke it ("<name>
  broke their shields", "<name> fired a plasma weapon").
- **Results** are won, failed, or tied (see Kill X first). A failure has no
  penalty beyond not getting the reward.
- **Objective enemies don't count toward clearing a wave.** For set
  objectives, their enemies are separate from the wave's enemy count.

## Round objectives

| Objective | Won when | Failed when |
|---|---|---|
| **Kill count** | The team gets X kills of type Y | The round ends first |
| **No deaths** | The round ends with no player death | Any counted player dies |
| **Shields intact** | The round ends with at most half the counted players' shields broken | More than half the counted players have broken their shields |
| **Kill X first** | The marked enemy is the first enemy a player kills | A player kills any other enemy first |
| **Don't use X** | The round ends with no use of X | Any counted player fires X, or throws X |

### Kill count

- Kill types: headshot, melee, grenade, splatter, or kills with a weapon
  class (the classes under Don't use X), as Firefight's kill notice tells
  them (`firefight_notify_actor_or_unit_killed`); a weapon class by what the
  killer holds. Beatdown from behind, stick and multikill are not in yet.
- X is set per kind and grows with the counted players (see Implementation).
  A kill type the players can't get isn't rolled (no splatters without the
  players' vehicles, no weapon class nobody carries).

### Shields intact

- Each player counts **once**, however many times their shields break.
- Fails when broken players > half the counted players: a solo player fails
  on the first break, 2 players when both break, 3 players at 2, 4 players at
  3.
- **Every damage source counts**: enemies, fall damage, a player's own
  explosives, and friendly fire when it's on.
- Not rolled when a skull or setting makes it meaningless, for example Black
  Eye or player shields off **(proposed)**.

### Kill X first

- The target is announced to all players **before the enemies spawn**, and
  marked on the HUD (a nav point, as `firefight_hud.c` already draws) once it
  is in the world.
- The target comes from the round's first wave.
- **Tie**: if the target dies without a player killing it (another AI, a
  vehicle crash, falling off the map), the objective is completed but neither
  won nor failed. It gives no reward.

### Don't use X

- X is a weapon type or a grenade type:
  - automatic
  - semi-automatic
  - shotgun
  - plasma
  - rocket
  - each grenade type the map has (frag, plasma, or any custom ones)
- X is picked from what players are carrying when the round starts, so some
  players have to switch weapons. I'd pick the type the most players are
  carrying **(proposed)**.
- **Firing or throwing it fails the objective for everyone.** Holding it,
  picking it up or switching to it does not.
- A weapon's type is worked out from its tag (trigger behaviour, projectile,
  plasma/energy use) and cached per map. Not rolled in Fiesta.

### Vehicle kills (added 2026-11-21)

- So many kills (5, times the players' scale) by players riding a vehicle
  of one type, driving or in any seat. The type is one of the vehicles the
  players could have; if none of it is on the map, one is made for them at
  the map's nearest free spot of that type, else beside them. It is marked
  until you get in.

### Travel (added 2026-11-21)

- A marked point far from the players (a flag spot, hill or oddball spawn
  they can walk to): won when a counted player reaches it before the round's
  waves are cleared.

### Use X only (added 2026-11-21)

- A weapon from the ordnance drops' own, one no player is carrying, dropped
  to every player in a pod as an ordnance drop is (nothing else in it).
- From the first wave (the pods are down by then), a counted player firing
  any other weapon fails it for everyone. Grenades and melee are allowed.
  Won when the round's waves are cleared.

## Set objectives

### Shared parts

**Site.** A site is a map objective point: a CTF flag spot, a KOTH hill, or
the oddball spawn. Only objectives whose map data exists can be picked (see
Availability). I'd pick from the far 60–80% of candidates, measured to the
nearest counted player and leaving out unreachable points, rather than always
taking the farthest one **(proposed)**. The spawner's reachability code
(`reach_build`, `firefight_straight_walk`) is used for this.

**Camp.** HVT, Reverse Generator and Purge share one system:

- A large runtime volume around the site. It's never saved and is no part of
  any Forge data. The goal and patrol code in `port/forge/src/forge_ai.c`
  (patrol volume, effect 7) needs a small public API for runtime goal
  volumes, since that code is all `static` today.
- Player spawn points inside the volume are disabled while the camp exists.
- Defender squads spawn in the volume and patrol it. Squads are weighted to
  dangerous units: high-ranking Elites, Hunters, and whatever the faction
  roster has in their place.
- Vehicles spawn from the map's vehicle placements inside the volume, using
  the existing map vehicle spots and AI driver code in
  `firefight_spawner.c`. Floodfight has no vehicles.
- Each objective has its own win condition.

### High Profile Target

- A camp with a VIP at the site centre (the flag, or the hill's centre). The
  VIP has a short-leash guard goal on that point; the escorts patrol the
  volume.
- The VIP is a special unit, like a spec ops Grunt or a gold Elite, when the
  roster has one. It is always marked on the HUD and given extra shields,
  whatever model it has.
- **Won**: the VIP is killed by a player. **Failed**: the timer runs out. The
  VIP and every survivor then teleport out (an effect, then deleted).

### Reverse Generator

- A camp with an enemy generator at the site centre, spawned through
  `firefight_generators.c` (the same model and hidden biped) but owned by the
  enemy: players damage it, AI defends it.
- **Won**: the generator is destroyed. **Failed**: the timer runs out.
- With Generator Defense on as well, the HUD has to keep the two kinds of
  generator apart (colour and label).

### Purge

- A camp with no centre target.
- **Won**: every camp enemy, including the vehicle crews, is dead.
  **Failed**: the set ends first **(proposed)**.

### Data Link

- A random KOTH hill turns on. It must not be one a player is standing in,
  nor one too far away for the timer.
- Progress fills only while a counted player is in the hill and no enemy is.
  Contested means paused.
- One or two squads are sent with the hill as their goal **(proposed)**.
- **Won**: X seconds held. **Failed**: Y seconds pass first.

### Flag

- A random flag turns on; the capture point is the other team's flag spot.
  The map needs two flag spots.
- Firefight isn't the CTF game engine, so this is its own logic: a flag
  weapon object, polled for who holds it, dropped on the holder's death,
  returned after lying untouched for a while, captured within a radius of the
  capture point.
- Enemies target the carrier.
- **Won**: captured. **Failed**: the set ends first **(proposed)**.

### Rescue

- A group of marines appears somewhere on the map, under attack. The marine
  tags are imported as the allies' pool does (randomizer).
- **While no player is near** (within 14 units), nothing fights. The
  marines spawn at full health; their "life" is a bar that empties in a
  quarter of the set time, and nothing hurts them meanwhile. Empty, they die.
- **When a player comes near**, the bar stops and the attacking squad spawns
  round them (4 plus one a player, 8 at most). While they're alive, the
  marines take reduced damage, in proportion to the attackers still alive:

  `damage reduction = 80% × (attackers alive / attackers spawned)`

  All alive means 80% less damage, half alive means 40%, and the last one
  alive means 0%.
- **Won** (rescued): every attacker is dead. **Failed**: every marine dies
  first.
- Rescued marines follow a player (the follow goal) until they die:
  reinforcements with points.

### Oddball

- A marked boss enemy spawns at the oddball site. It does not carry the
  ball; it drops the ball when it dies.
- The ball resets to the boss's death point when it falls off the map or
  lies untouched for too long.
- **All enemies target the carrier**, and enemy spawns increase while the
  ball is held.
- The goal is team hold time, so handing the ball off counts **(proposed)**.
- **Won**: X seconds held. **Failed**: the set ends first **(proposed)**.

### Collect (added 2026-11-21)

- Gambit's motes: every enemy a player kills drops a skull (the map's
  oddball, which no one can pick up as a weapon). Walking into one takes it;
  a player's count is on their card ("CARRYING 7").
- Bank them at the deposit, a KOTH hill (a flag's base on a map with none):
  walking in adds all you carry. A carrier who dies drops one skull worth
  everything they carried, for anyone. Skulls on the ground go after 30
  seconds.
- Won when 20 (plus 8 a player past the first, 60 at most) are banked before
  the set ends. Contribution: what each banked.

### Bomb (added 2026-11-21)

- A bomb (the map's oddball) waits at the objective point nearest the
  players; its target is one far from them. Every enemy goes for its
  carrier.
- Carried into the target (3.5 units), it is planted: out of the carrier's
  hands, on the spot, no one can take it. It arms for a sixth of the set time
  (50 s by default); 4 enemies come for it, and 2 more every 15 seconds.
- Enemies within 3 units of it with no player there disarm it in 5 seconds
  (a player there makes it go back down). Disarmed, it goes back to where it
  waited, to be carried again.
- Armed, it goes off: every enemy within 10 units dies, and the objective is
  won. Contribution: carrying, planting, and time near it while it arms.

## Rewards

- **Points** for both kinds, split among the counted players by how much
  each contributed.
- **Set objective won**:
  - the **top 50%** of players by contribution each get an ordnance pod,
    with the regular ordnance rules (the existing pod system in
    `firefight_spawner.c`);
  - the **top player** also gets extra points.

Contribution by objective **(proposed)**:

| Objective | Contribution |
|---|---|
| Kill count | Qualifying kills |
| No deaths, Shields intact, Don't use X | Equal shares among the counted players |
| Kill X first | Who killed the target |
| High Profile Target | Damage to the VIP, plus kills in the camp |
| Reverse Generator | Damage to the generator, plus kills in the camp |
| Purge | Camp kills |
| Data Link | Time in the hill |
| Flag | Carry time, plus a bonus for the capture |
| Rescue | Attackers killed, plus marines alive at the end of the set |
| Oddball | Hold time, plus the boss kill |

## Settings

- Server Setup > GAME SETTINGS has two rows, a Firefight game's: **ROUND
  OBJECTIVES** and **SET OBJECTIVES**. Each opens a screen of its own:
  - ROUND OBJECTIVES: on/off, CHANCE (10% to 100%, 50% by default), and each
    of the five on/off.
  - SET OBJECTIVES: on/off, CHANCE (25% to 100%, 80% by default), and each of
    the seven on/off.

  Each row's value sums up its screen: "50%, 4 OF 5 ON", or "80%, 7 ON, 2
  NOT ON THIS MAP".
- **The same setup on every map.** They are `config.toml` settings
  (`game.firefight_objectives_round`, `game.firefight_objectives_set`, their
  `_chance`s and `game.firefight_objective_<name>`; [settings.md](settings.md)),
  not the per-map or per-variant Firefight options.
- **The host's config is the one played.** Joiners don't need one. Replays
  carry the objectives' state with Firefight's.

## Availability

| Objective | Needs |
|---|---|
| All round objectives | Nothing (Kill count's splatter type needs the players' vehicles; Don't use X is never rolled in Fiesta; Shields intact never with no shields or Black Eye) |
| High Profile Target, Enemy Generator, Purge | A flag spot, a KOTH hill or an oddball spawn |
| Data Link | A KOTH hill |
| Flag | Two flag spots, and the globals' flag |
| Rescue | A flag spot, hill or oddball spawn, and marines in the roster |
| Oddball | An oddball spawn, and the globals' ball |
| Collect | A KOTH hill or a flag spot, and the globals' ball |
| Bomb | Two objective points, and the globals' ball |
| Vehicle kills, Travel, Use X only | A vehicle the players could have; an objective point; a weapon of the drops' |

- On a map that lacks the data, the objective is left out for that match.
  The config keeps it on for the next map.
- **The game says so** as it starts: "NOT ON THIS MAP: FLAG, ODDBALL" for 10
  seconds, before anything else is announced.
- **The menu says so** for a map that has been played: the game writes what
  each map has to `d:\firefight_objective_maps.txt` as it loads it, and the
  SET OBJECTIVES screen shows "NOT ON THIS MAP: ..." as the help of a row the
  map can't play; the Server Setup row counts them. A map never played can't
  be told before it loads (its markers are in its scenario's data, which the
  menus don't read).

## Network and HUD

- The host decides everything: rolls, sites, progress and results.
- Clients get `struct firefight_objectives_view` at the end of Firefight's
  state (`firefight_network.c`), mod version 111.
- HUD (`firefight_hud.c`'s `draw_objectives`):
  - a card for each objective under the generators' (title, status, result),
    with a bar for a hold, a generator's health or the marines' life;
  - a notice line under the banner: an objective's start, a rule broken and
    by whom, a result and its points;
  - markers: the marked enemy (FIRST), the VIP, the skull carrier, the enemy
    generator, the enemy base, the Data Link, the flag and its capture point,
    the marines.

## Implementation (2026-11-21, untested in game)

- `port/linux/game/firefight_objectives.c`: everything above.
- Hooks: `firefight.c` (map start, round start, wave spawned, round cleared,
  set end, kills, deaths, each tick), `firefight_spawner.c` (objective units
  never tracked by the waves, pods for some players, the carrier as every
  wave enemy's target, no player spawns in a camp), `firefight_generators.c`
  (the generator's looks, the enemy generator's hidden unit),
  `source/items/weapons.c` (a shot), `source/units/units.c` (a grenade
  thrown), `source/objects/damage.c` (the enemy generator's damage, the
  marines' reduction), `campaign_score.c` (`campaign_score_award_points`).
- Amounts:
  - points: a round objective 1000, a set objective 3000, its best player
    1000 more, Rescue 250 a marine alive at the set's end;
  - High Profile Target and Enemy Generator: half the set time; Data Link:
    held a quarter of it before half of it has passed; Purge, Flag and Oddball:
    until the set ends;
  - a camp: 18 world units round its site, 5 defenders plus 2 a player past
    the first (9 at most), up to 2 vehicles from the map's placements in it;
  - kill counts: headshots 6, melee 3, grenades 3, splatters 2, automatic 12,
    semi-automatic 10, shotgun 6, plasma 10, rockets 4; times 1.5 a player
    past the first (3 times at most).
- A weapon's class is guessed from its tag: "rocket" or "fuel rod" in its
  name a rocket; five or more projectiles a shot, or "shotgun", a shotgun;
  no magazine, or "plasma", plasma; a latched trigger semi-automatic; the
  rest automatic.
- A camp's units are wave-like AI (they charge what they see, as every
  Firefight actor is set to); the camp sends them back once they are past
  1.1 times its radius, and the VIP back to its middle.

## Playtest changes (2026-11-22, untested in game)

- Use X only: its weapons lying about (a dead player's, a pod's) are kept
  and marked with the weapon's name for a player without one; with none
  about, a counted player alive without one gets a pod of it again (20 s
  apart at most). Firing a vehicle's or a turret's gun, or throwing any
  grenade, breaks it too.
- Purge the base: each of the base's enemies within 30 units of the player
  is marked PURGE.
- High value target, Purge and Rescue take a flag's spot (a base, with its
  cover) when the map has flags; the camp's units defend it: no charging,
  sent back once past 0.8 of its radius, fighting or not.
- Collect: skulls a player dropped dying are marked (and lie twice as long);
  a skull that is never taken stands on the deposit, with a harmless fire
  round it on every machine.
- Travel's point and a round objective's are kept 8 units apart (and, should
  they share a spot, GO HERE is drawn higher).
- An ordnance ammo crate is the props' resupply rack (weapon_racks.c): one a
  drop, everyone's, action by it refills every weapon, for as long as it
  stands.
- Server Setup: VEHICLES and OBJECTIVE SETTINGS (WAVE OBJECTIVES, ROUND
  OBJECTIVES) are on the hub, after GAME SETTINGS.
- The marks are at the view's end: mod version 112.

## Open

- Default amounts (above) to be tuned in play.
- How many points each objective gives (a set amount for now).
