# Mace Progression

Minecraft Java Edition **1.21.11** datapack: a 7-tier, kill-tracked, soulbound Mace with automatic death reset and an optional Tier 7 "Evolved Mace" branch (lifesteal + Shieldbreaker). Fun to use for small (potentially scripted) SMPs that only last a short while. Inspired by Freshlol

## Install
Copy this repository folder (`pack.mcmeta` and `data/` must sit directly inside it) into `<world>/datapacks/`, then run `/reload`.

## Crafting
The vanilla Mace recipe is overridden (`data/minecraft/recipe/mace.json`) with an ingredient from an empty item tag, so a Mace can no longer be crafted. The only Mace source is this pack.

## Admin commands
- `/function maceprogression:admin/give` - Tier 1, clears Evolved-path state
- `/function maceprogression:admin/reset` - Tier 1 mace
- `/function maceprogression:admin/info` - show tier
- `/function maceprogression:admin/set_tier/t1` ... `t7`

See the project documentation PDF for the full behaviour reference.

Note: This project is made by AI!
