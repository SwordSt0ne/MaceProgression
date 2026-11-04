execute if score @s mp.spec matches 1 if score @s mp.evolve matches ..0 if score @s mp.tier matches 7 run return run function maceprogression:spec/hp_add
execute if score @s mp.spec matches 1 if score @s mp.evolve matches 1..3 run return run function maceprogression:spec/hp_add
attribute @s minecraft:max_health modifier remove maceprogression:spec_hp
