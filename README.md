# Mace Progression

Minecraft Java Edition **1.21.11** datapack: a kill-tracked, soulbound Mace that grows over roughly 29 player kills, with an optional Evolved branch that ends in the GOD MACE. The vanilla Mace recipe is disabled, so this pack is the only Mace source.

## Install
Copy this folder (`pack.mcmeta` and `data/` directly inside it) into `<world>/datapacks/`, then run `/reload`.

## Progression (about 29 kills in total)
| Stage | Kills to reach | Cumulative |
|---|---|---|
| Tier 2 / 3 / 4 / 5 / 6 / 7 | +1 / +1 / +2 / +3 / +3 / +4 | 1 / 2 / 4 / 7 / 10 / 14 |
| Evolved: Dormant -> Awakened | +5 | 19 |
| Awakened -> final choice (Perfected or GOD) | +10 | 29 |

Kill credit is given when a player is killed by another player who is holding a tracked mace in the main hand. The game's own death attribution decides who the killer is.
- **Underdog bonus:** a kill counts double if the victim outranks you, and counts nothing if they are 5 or more ranks below you. Ranks: tiers 1-7, Dormant 8, Awakened/Perfected 9, GOD 10.
- **Anti-farm:** the same killer/victim pair only counts once every 5 minutes.
- **Dethrone:** killing the GOD MACE holder announces "THE CROWN IS FREE" to the whole server and gives the killer +5 kills of progress (+3 bounty, +2 head start) on top of the normal kill value (so a Tier 6 killer gets +7 including the underdog bonus). If the holder dies to something else, the server is still told the crown is free.

## Curses
Type `/trigger mp.curse_pick` to take one Curse per life (a clickable menu appears). While cursed, every counted kill gives +1 extra progress. The curse is lifted when you die, and you can choose again.
- **Frail:** 4 fewer hearts.
- **Hunted:** permanent glowing outline, 20% slower.
- **Brittle:** armor and armor toughness reduced by 20%.

All three are pure debuffs, balanced to weaken a fully armored player by a similar amount (roughly 1.6x damage taken).

## Blood Moon
Each night has a 10% chance to become a Blood Moon. It is announced to the whole server with a red boss bar, and every kill's base value is doubled (the dethrone bonus is not) until dawn. Sleeping through the night or setting the time to day ends it. Admins can use `admin/bloodmoon_start` and `admin/bloodmoon_end`.

## Tier score
The `mp.tier` score (the optional sidebar) shows 1-7 for the standard tiers, then 8 for Dormant, 9 for Awakened/Perfected and 10 for the GOD MACE. These are also the ranks used by the underdog bonus.

## Progress bar
While you hold a tracked mace, a small action bar shows your progress, e.g. `Tier 3 [#----] 1/2`, `Dormant [###--] 3/5` or `Awakened [#----] 2/10`.

## Flair
Tier-ups show a title with particles and sounds (more at Tier 4+), Tier 7, Awakened, Perfected and the GOD MACE coronation are announced server-wide.

## Specializations
At Tier 4 you get a one-time chat prompt with an [OPEN MENU] button (visible only to you) that opens a menu screen. The same prompt repeats on every kill you make while you are held at Tier 4 without a path, and the action bar reminds you too. You can reopen the menu any time with `/trigger mp.spec_pick`. Kills still count, but you cannot reach Tier 5 until you choose. The path survives death and is reset by the Perfected restart. It changes Tiers 5-7 and the Dormant, Awakened and Perfected Evolved Mace. The GOD MACE is the same for everyone.

| | Tier 5 | Tier 6 | Tier 7 | Dormant | Awakened / Perfected |
|---|---|---|---|---|---|
| **Juggernaut** (heavy, tough) | Dens III, Breach III; Haste, Resistance I | Dens IV, Breach III; + Strength I | Dens V, Breach III; +2 hearts | Dens III, Breach II; Haste, Resistance I | Dens V, Breach III; Haste, Strength I, Resistance I; +2 hearts |
| **Skirmisher** (fast, lifesteal) | Dens II, Breach II, Wind Burst II; Speed I; 5% lifesteal | Dens III; 8% lifesteal | Wind Burst III; Speed II; 12% lifesteal | Wind Burst I; Haste, Speed I; 13% lifesteal | Dens III, Breach II, Wind Burst III; Haste, Speed II; lifesteal up to 18% |
| **Stormcaller** (lightning) | Dens II, Breach II, Wind Burst I; Fire Resistance; 3% lightning | Dens III; + Strength I; 5% lightning | Breach III, Wind Burst II; 7% lightning | Dens II, Breach II; Haste, Fire Resistance; 3% lightning | Dens IV, Breach II, Wind Burst II; Haste, Strength I, Fire Resistance; 8% lightning |

Admin: `admin/set_spec/s0` to `s3` sets the path and rebuilds the mace.

## Power
| Stage | Enchantments | Passive effects | Notes |
|---|---|---|---|
| Tier 1 | Density I, Breach I | - | |
| Tier 2 | Density I, Breach I | Haste I | |
| Tier 3 | Density II, Breach I | Haste I | |
| Tier 4 | Density II, Breach II | Haste I | |
| Tier 5 | Density III, Breach II, Wind Burst I | Haste I, Strength I | |
| Tier 6 | Density III, Breach III, Wind Burst I | Haste I, Strength I, Speed I | |
| Tier 7 | Density IV, Breach III, Wind Burst I | Haste I, Strength I, Speed I | Can evolve on rejoin |
| Evolved (Dormant) | Density II, Breach II | Haste I, Speed I | 10% lifesteal |
| Evolved (Awakened) | Density IV, Breach III, Wind Burst I | Haste I, Strength I, Speed I | Lifesteal grows to 15%; Shieldbreaker at 10 Evolved kills |
| Perfected | as Awakened | as Awakened | Final choice: never resets on death, no further growth |
| GOD MACE | Density V, Breach IV, Wind Burst II | Haste I, Strength II, Speed II, Resistance II, glowing | No fall damage, 30% lifesteal, 10% lightning on hit, hits dealing 20+ hearts shatter totems and kill |

## Death
- **Tiers 1-7:** you fall back to the start of your current tier (you keep the tier, lose the kills toward the next one).
- **Dormant:** back to 0 Evolved kills. **Awakened:** back to the start of the Awakened stage.
- **GOD MACE:** lost on death; you return to the start of the Awakened stage and can earn it again.
- **Perfected:** never resets on death. A Perfected player can start over at any time with `/trigger mp.restart` and a confirm click, which returns them to Tier 1 with no progress (the Tier 7 evolution offer becomes available again).

## Soulbound
Tracked maces are unbreakable, destroyed if dropped, removed from Ender Chests, and rebuilt automatically if missing. Only the Ender Chest is actively scanned; avoid storing the mace in other containers.

## Admin commands
- `/function maceprogression:admin/give` - Tier 1, clears all Evolved state
- `/function maceprogression:admin/reset` - Tier 1 mace
- `/function maceprogression:admin/god` - give yourself the GOD MACE (testing)
- `/function maceprogression:admin/info` - show your stage
- `/function maceprogression:admin/sidebar_on` / `sidebar_off` - show or hide the tier scoreboard on the side of the screen (hidden by default)
- `/function maceprogression:admin/set_tier/t1` ... `t7`

## Protection V
A custom armor enchantment, **Protection V**, gives 6 protection points per piece (Protection IV gives 4). It is mutually exclusive with the other Protection enchantments. It never appears in enchanting tables, loot or trades. The only way to get it is to craft the book:

```
N E N      N = Netherite Ingot
S B S      E = Enchanted Golden Apple
N E N      S = Nether Star,  B = Book
```
Apply the book to armor on an anvil. Vanilla's cap still limits total protection to 80%.

## Status
The datapack has been fully tested and is functional. Download the latest version in releases. However, the pack has not been tested to see if everything is balanced.
