# runs on a tick where the player dealt damage with the tracked mace in the main hand
execute if score @s mp.evolve matches 1.. run function maceprogression:evolved/lifesteal
execute if score @s mp.evolve matches ..0 if score @s mp.spec matches 2 if score @s mp.tier matches 5.. run function maceprogression:evolved/lifesteal
function maceprogression:fx/lightning
