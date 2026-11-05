scoreboard players operation #a mp.tmp = @s mp.evo_accept
scoreboard players reset @s mp.evo_accept
scoreboard players reset @s mp.evo_decline
execute unless score @s mp.evolve matches 0 run return 0
execute unless score @s mp.tier matches 7 run return 0
execute if score #a mp.tmp matches 1.. run return run function maceprogression:evolved/accept
function maceprogression:evolved/decline
