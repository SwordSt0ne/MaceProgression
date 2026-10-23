scoreboard players add @s mp.tier 1
execute if score @s mp.tier matches 2 run function maceprogression:tiers/t2
execute if score @s mp.tier matches 3 run function maceprogression:tiers/t3
execute if score @s mp.tier matches 4 run function maceprogression:tiers/t4
execute if score @s mp.tier matches 5 run function maceprogression:tiers/t5
execute if score @s mp.tier matches 6 run function maceprogression:tiers/t6
execute if score @s mp.tier matches 7 run function maceprogression:tiers/t7
tellraw @s [{text:"Your Mace has reached ",color:"gold"},{text:"Tier ",bold:true},{score:{name:"@s",objective:"mp.tier"},bold:true},{text:"!"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1
