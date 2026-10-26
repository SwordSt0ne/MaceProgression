execute unless items entity @s container.* mace[custom_data~{mp_mace:1b}] unless items entity @s weapon.offhand mace[custom_data~{mp_mace:1b}] run return 0
execute if score @s mp.evolve matches 2.. run return run function maceprogression:tiers/effects_t7
execute if score @s mp.evolve matches 1 run return 0
execute if score @s mp.tier matches 2..6 run effect give @s minecraft:haste 3 0 true
execute if score @s mp.tier matches 4..6 run effect give @s minecraft:strength 3 0 true
execute if score @s mp.tier matches 5.. run effect give @s minecraft:fire_resistance 3 0 true
execute if score @s mp.tier matches 6 run effect give @s minecraft:speed 3 0 true
execute if score @s mp.tier matches 7 run function maceprogression:tiers/effects_t7
