execute unless items entity @s container.* mace[custom_data~{mp_god:1b}] unless items entity @s weapon.offhand mace[custom_data~{mp_god:1b}] run return run attribute @s minecraft:fall_damage_multiplier modifier remove maceprogression:god_nofall
effect give @s minecraft:strength 3 1 true
effect give @s minecraft:speed 3 1 true
effect give @s minecraft:glowing 3 0 true
effect give @s minecraft:resistance 3 1 true
attribute @s minecraft:fall_damage_multiplier modifier add maceprogression:god_nofall -1 add_multiplied_total
