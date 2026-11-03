scoreboard players set #bloodmoon mp.tmp 1
bossbar set maceprogression:bloodmoon players @a
bossbar set maceprogression:bloodmoon visible true
title @a times 10 70 20
title @a subtitle {text:"Kills count double until dawn",color:"gray"}
title @a title {text:"THE BLOOD MOON RISES",color:"dark_red",bold:true}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 100 0.6
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100 0.6
tellraw @a {text:"The Blood Moon rises. Kills count double until dawn.",color:"dark_red",bold:true}
