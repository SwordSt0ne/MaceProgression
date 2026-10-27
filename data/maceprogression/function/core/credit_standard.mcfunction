execute if score @s mp.tier matches 7 run return 0
scoreboard players add @s mp.progress 1
execute if score @s mp.tier matches 1 if score @s mp.progress matches 2.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 2 if score @s mp.progress matches 5.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 3 if score @s mp.progress matches 9.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 4 if score @s mp.progress matches 14.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 5 if score @s mp.progress matches 20.. run function maceprogression:tiers/advance
execute if score @s mp.tier matches 6 if score @s mp.progress matches 27.. run function maceprogression:tiers/advance
