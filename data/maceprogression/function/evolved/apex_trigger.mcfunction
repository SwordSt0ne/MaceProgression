scoreboard players operation #a mp.tmp = @s mp.apex_god
scoreboard players reset @s mp.apex_keep
scoreboard players reset @s mp.apex_god
execute unless score @s mp.evolve matches 2 run return 0
execute unless score @s mp.evolve_kills matches 15.. run return 0
execute if score #a mp.tmp matches 1.. run return run function maceprogression:evolved/apex_god
function maceprogression:evolved/apex_keep
