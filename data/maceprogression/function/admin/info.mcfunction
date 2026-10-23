execute if score @s mp.evolve matches 1 run return run tellraw @s {text:"Mace: dormant Evolved Mace.",color:"gray"}
execute if score @s mp.evolve matches 2 run return run tellraw @s [{text:"Mace: awakened Evolved Mace (",color:"gray"},{score:{name:"@s",objective:"mp.evolve_kills"}},{text:" Evolved kills)."}]
tellraw @s [{text:"Mace tier: ",color:"gray"},{score:{name:"@s",objective:"mp.tier"},color:"gold"}]
