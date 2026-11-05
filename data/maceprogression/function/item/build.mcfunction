# Rebuilds the player's tracked mace from their tier, specialization and Evolved state.
clear @s mace[custom_data~{mp_mace:1b}]
execute if score @s mp.evolve matches 4 run return run function maceprogression:item/god
execute store result storage maceprogression:tmp s int 1 run scoreboard players get @s mp.spec
execute if score @s mp.evolve matches 1..3 run return run function maceprogression:item/evolved
execute if score @s mp.tier matches ..4 run data modify storage maceprogression:tmp s set value 0
execute store result storage maceprogression:tmp t int 1 run scoreboard players get @s mp.tier
scoreboard players operation @s mp.built = @s mp.tier
function maceprogression:item/std with storage maceprogression:tmp
