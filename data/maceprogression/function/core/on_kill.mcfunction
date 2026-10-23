execute if score @s mp.evolve matches 1.. run function maceprogression:evolved/kill
execute unless score @s mp.evolve matches 1.. if score @s mp.tier matches ..6 run function maceprogression:tiers/advance
