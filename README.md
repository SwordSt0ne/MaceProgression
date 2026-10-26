# Mace Progression

Minecraft Java Edition **1.21.11** datapack: a 7-tier, kill-tracked, soulbound Mace with automatic death reset and an optional Tier 7 "Evolved Mace" branch (lifesteal + Shieldbreaker). Fun to use for small (potentially scripted) SMPs that only last a short while. Inspired by Freshlol

## Install
Copy this repository folder (`pack.mcmeta` and `data/` must sit directly inside it) into `<world>/datapacks/`, then run `/reload`.

## Crafting
The vanilla Mace recipe is overridden (`data/minecraft/recipe/mace.json`) with an ingredient from an empty item tag, so a Mace can no longer be crafted. The only Mace source is this pack.

## Admin commands
- `/function maceprogression:admin/give` - Tier 1, clears Evolved-path state
- `/function maceprogression:admin/reset` - Tier 1 mace
- `/function maceprogression:admin/god` - give yourself the GOD MACE (testing)
- `/function maceprogression:admin/info` - show tier
- `/function maceprogression:admin/set_tier/t1` ... `t7`

See the project documentation PDF for the full behaviour reference.

Note: This project is made by AI!
This project is in beta, if you use it in your server and find bugs or exploits please report it to me!

## 100-kill choice
An awakened Evolved Mace holder who reaches 100 Evolved kills without dying is offered [KEEP] (permanent 100-kill Evolved Mace, never resets on death, no further growth) or [GOD MACE] (currently a placeholder with the awakened stats plus an enchant glint; abilities TBD).

Lifesteal is capped at 25% of damage dealt.
