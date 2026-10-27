particle minecraft:end_rod ~ ~1 ~ 0.6 1 0.6 0.25 80
particle minecraft:electric_spark ~ ~1 ~ 0.8 1 0.8 0.4 60
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 2 1
tellraw @a [{selector:"@s",color:"gold"},{text:" has forged their Mace to Tier 7!",color:"gold"}]
