# bounty (+3) and head start (+2) toward claiming the crown
scoreboard players add #v mp.tmp 5
scoreboard players set #crowned mp.tmp 1
title @a times 10 70 20
title @a subtitle [{selector:"@s",color:"gold"},{text:" dethroned ",color:"gray"},{selector:"@a[tag=mp.dvic,limit=1]",color:"red"}]
title @a title {text:"THE CROWN IS FREE",color:"gold",bold:true}
playsound minecraft:entity.wither.death master @a ~ ~ ~ 100 1
tellraw @a [{text:"★ ",color:"gold"},{selector:"@s",color:"gold",bold:true},{text:" has dethroned ",color:"gray"},{selector:"@a[tag=mp.dvic,limit=1]",color:"red",bold:true},{text:"! The GOD MACE can be claimed again.",color:"gray"}]
tellraw @s {text:"You dethroned the GOD MACE holder: +5 kills of progress.",color:"gold"}
