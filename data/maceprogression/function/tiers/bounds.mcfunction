# #fl = progress at the start of the player's tier, #nx = progress needed for the next tier
execute if score @s mp.tier matches 1 run scoreboard players set #fl mp.tmp 0
execute if score @s mp.tier matches 2 run scoreboard players set #fl mp.tmp 1
execute if score @s mp.tier matches 3 run scoreboard players set #fl mp.tmp 2
execute if score @s mp.tier matches 4 run scoreboard players set #fl mp.tmp 4
execute if score @s mp.tier matches 5 run scoreboard players set #fl mp.tmp 7
execute if score @s mp.tier matches 6 run scoreboard players set #fl mp.tmp 10
execute if score @s mp.tier matches 7 run scoreboard players set #fl mp.tmp 14
execute if score @s mp.tier matches 1 run scoreboard players set #nx mp.tmp 1
execute if score @s mp.tier matches 2 run scoreboard players set #nx mp.tmp 2
execute if score @s mp.tier matches 3 run scoreboard players set #nx mp.tmp 4
execute if score @s mp.tier matches 4 run scoreboard players set #nx mp.tmp 7
execute if score @s mp.tier matches 5 run scoreboard players set #nx mp.tmp 10
execute if score @s mp.tier matches 6 run scoreboard players set #nx mp.tmp 14
