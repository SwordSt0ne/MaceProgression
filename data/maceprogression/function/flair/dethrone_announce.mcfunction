title @a times 10 70 20
title @a subtitle [{selector:"@a[tag=mp.killer,limit=1]",color:"gold"},{text:" dethroned ",color:"gray"},{selector:"@s",color:"red"}]
title @a title {text:"THE CROWN IS FREE",color:"gold",bold:true}
playsound minecraft:entity.wither.death master @a ~ ~ ~ 100 1
tellraw @a [{text:"★ ",color:"gold"},{selector:"@a[tag=mp.killer,limit=1]",color:"gold",bold:true},{text:" has dethroned ",color:"gray"},{selector:"@s",color:"red",bold:true},{text:"! The GOD MACE can be claimed again.",color:"gray"}]
