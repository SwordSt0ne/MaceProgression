# % chance (in #chance) that a hit calls lightning on the target
scoreboard players set #chance mp.tmp 0
execute if score @s mp.evolve matches 4 run scoreboard players set #chance mp.tmp 10
execute if score @s mp.spec matches 3 if score @s mp.evolve matches ..0 if score @s mp.tier matches 5 run scoreboard players set #chance mp.tmp 3
execute if score @s mp.spec matches 3 if score @s mp.evolve matches ..0 if score @s mp.tier matches 6 run scoreboard players set #chance mp.tmp 5
execute if score @s mp.spec matches 3 if score @s mp.evolve matches ..0 if score @s mp.tier matches 7 run scoreboard players set #chance mp.tmp 7
execute if score @s mp.spec matches 3 if score @s mp.evolve matches 1 run scoreboard players set #chance mp.tmp 3
execute if score @s mp.spec matches 3 if score @s mp.evolve matches 2..3 run scoreboard players set #chance mp.tmp 8
execute if score #chance mp.tmp matches 1.. if predicate maceprogression:chance run function maceprogression:evolved/god_lightning
