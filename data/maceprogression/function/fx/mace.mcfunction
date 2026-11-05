execute unless items entity @s container.* mace[custom_data~{mp_mace:1b}] unless items entity @s weapon.offhand mace[custom_data~{mp_mace:1b}] run return run attribute @s minecraft:fall_damage_multiplier modifier remove maceprogression:god_nofall
execute if score @s mp.evolve matches 4 run return run function maceprogression:fx/god
attribute @s minecraft:fall_damage_multiplier modifier remove maceprogression:god_nofall
function maceprogression:fx/kit
