execute if score @s mp.evolve matches 1..2 run function maceprogression:evolved/death_reset
execute if score @s mp.evolve matches 3 run function maceprogression:evolved/final
execute if score @s mp.evolve matches 4 run function maceprogression:evolved/god
execute unless score @s mp.evolve matches 1.. run function maceprogression:tiers/t1
