# Mace Progression

Minecraft Java Edition **1.21.11** datapack: a kill-tracked, soulbound Mace that grows over roughly 50 player kills, with an optional Evolved branch that ends in the GOD MACE. The vanilla Mace recipe is disabled, so this pack is the only Mace source.

## Install
Copy this folder (`pack.mcmeta` and `data/` directly inside it) into `<world>/datapacks/`, then run `/reload`.

## Progression (about 50 kills in total)
| Stage | Kills to reach | Cumulative |
|---|---|---|
| Tier 2 / 3 / 4 / 5 / 6 / 7 | +2 / +3 / +4 / +5 / +6 / +7 | 2 / 5 / 9 / 14 / 20 / 27 |
| Evolved: Dormant -> Awakened | +8 | 35 |
| Awakened -> final choice (Perfected or GOD) | +15 | 50 |

Kill credit is given when a player dies within 5 seconds of being hit by the killer's tracked mace (held in the main hand).
- **Underdog bonus:** a kill counts double if the victim outranks you, and counts nothing if they are 3 or more ranks below you. Ranks: tiers 1-7, Dormant 8, Awakened/Perfected 9, GOD 10.
- **Anti-farm:** the same killer/victim pair only counts once every 5 minutes.
- **GOD bounty:** killing the GOD MACE holder gives +3 kills of progress.

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
| Evolved (Dormant) | none | none | 10% lifesteal |
| Evolved (Awakened) | Density IV, Breach III, Wind Burst I | Haste I, Strength I, Speed I | Lifesteal grows to 15%; Shieldbreaker at 15 Evolved kills |
| Perfected | as Awakened | as Awakened | Final choice: never resets on death, no further growth |
| GOD MACE | Density V, Breach IV, Wind Burst II | Strength II, Speed II, Resistance II, glowing | No fall damage, 30% lifesteal, 10% lightning on hit, hits dealing 20+ hearts shatter totems and kill |

## Death
- **Tiers 1-7:** you fall back to the start of your current tier (you keep the tier, lose the kills toward the next one).
- **Dormant:** back to 0 Evolved kills. **Awakened:** back to the start of the Awakened stage.
- **GOD MACE:** lost on death; you return to the start of the Awakened stage and can earn it again.
- **Perfected:** never resets.

## Soulbound
Tracked maces are unbreakable, destroyed if dropped, removed from Ender Chests, and rebuilt automatically if missing. Only the Ender Chest is actively scanned; avoid storing the mace in other containers.

## Admin commands
- `/function maceprogression:admin/give` - Tier 1, clears all Evolved state
- `/function maceprogression:admin/reset` - Tier 1 mace
- `/function maceprogression:admin/god` - give yourself the GOD MACE (testing)
- `/function maceprogression:admin/info` - show your stage
- `/function maceprogression:admin/set_tier/t1` ... `t7`
