title @s times 5 45 15
title @s subtitle {text:"Your Mace grows stronger",color:"gray"}
title @s title [{text:"TIER ",color:"gold",bold:true},{score:{name:"@s",objective:"mp.tier"},color:"gold",bold:true}]
particle minecraft:firework ~ ~1 ~ 0.4 0.6 0.4 0.08 25
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1
execute if score @s mp.tier matches 4.. run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.8 0.5 0.3 40
execute if score @s mp.tier matches 4.. run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1
execute if score @s mp.tier matches 7 run function maceprogression:flair/tier7
