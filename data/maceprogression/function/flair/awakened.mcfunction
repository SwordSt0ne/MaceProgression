title @s times 5 50 20
title @s subtitle {text:"Your Evolved Mace awakens",color:"gray"}
title @s title {text:"AWAKENED",color:"dark_red",bold:true}
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 1 0.5 0.15 60
particle minecraft:sculk_soul ~ ~1 ~ 0.5 1 0.5 0.1 40
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 2 0.7
playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.6 1.5
tellraw @a [{selector:"@s",color:"dark_red"},{text:" has awakened their Evolved Mace!",color:"dark_red"}]
