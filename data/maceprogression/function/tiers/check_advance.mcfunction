execute if score @s mp.tier matches 1 if score @s mp.progress matches 1.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 2 if score @s mp.progress matches 2.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 3 if score @s mp.progress matches 4.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 4 if score @s mp.progress matches 7.. if score @s mp.spec matches 1..3 run function maceprogression:tiers/advance
execute if score @s mp.tier matches 5 if score @s mp.progress matches 10.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 6 if score @s mp.progress matches 14.. run function maceprogression:tiers/advance
