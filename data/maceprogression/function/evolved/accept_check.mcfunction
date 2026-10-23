scoreboard players reset @s mp.evo_accept
scoreboard players reset @s mp.evo_decline
execute if score @s mp.evolve matches 0 if score @s mp.tier matches 7 run function maceprogression:evolved/accept
