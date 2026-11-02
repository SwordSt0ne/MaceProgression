execute if score @s mp.tier matches 7 run return run title @s actionbar [{text:"Tier 7 ",color:"gold"},{text:"MAX",color:"yellow",bold:true}]
execute if score @s mp.tier matches 1 run scoreboard players set #fl mp.tmp 0
execute if score @s mp.tier matches 2 run scoreboard players set #fl mp.tmp 1
execute if score @s mp.tier matches 3 run scoreboard players set #fl mp.tmp 2
execute if score @s mp.tier matches 4 run scoreboard players set #fl mp.tmp 4
execute if score @s mp.tier matches 5 run scoreboard players set #fl mp.tmp 7
execute if score @s mp.tier matches 6 run scoreboard players set #fl mp.tmp 10
execute if score @s mp.tier matches 1 run scoreboard players set #need mp.tmp 1
execute if score @s mp.tier matches 2 run scoreboard players set #need mp.tmp 1
execute if score @s mp.tier matches 3 run scoreboard players set #need mp.tmp 2
execute if score @s mp.tier matches 4 run scoreboard players set #need mp.tmp 3
execute if score @s mp.tier matches 5 run scoreboard players set #need mp.tmp 3
execute if score @s mp.tier matches 6 run scoreboard players set #need mp.tmp 4
scoreboard players operation #cur mp.tmp = @s mp.progress
scoreboard players operation #cur mp.tmp -= #fl mp.tmp
function maceprogression:hud/fill
execute store result storage maceprogression:hud t int 1 run scoreboard players get @s mp.tier
function maceprogression:hud/draw_tier with storage maceprogression:hud
