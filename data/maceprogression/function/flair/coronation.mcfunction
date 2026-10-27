title @a times 10 70 20
title @a subtitle [{selector:"@s",color:"gold"},{text:" claims the GOD MACE",color:"gold"}]
title @a title {text:"A NEW GOD RISES",color:"gold",bold:true}
particle minecraft:end_rod ~ ~1 ~ 0.6 1.2 0.6 0.3 120
particle minecraft:electric_spark ~ ~1 ~ 0.8 1.2 0.8 0.5 100
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100 0.8
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 100 1
tellraw @a [{text:"★ ",color:"gold"},{selector:"@s",color:"gold",bold:true},{text:" has claimed the GOD MACE. Take the crown from them.",color:"gold"}]
