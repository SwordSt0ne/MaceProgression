title @s times 5 50 20
title @s title {text:"PERFECTED",color:"dark_red",bold:true}
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 60
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
tellraw @a [{selector:"@s",color:"dark_red"},{text:" has perfected their Evolved Mace.",color:"dark_red"}]
