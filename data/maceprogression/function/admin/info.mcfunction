execute if score @s mp.evolve matches 1 run return run tellraw @s {text:"Mace: dormant Evolved Mace.",color:"gray"}
execute if score @s mp.evolve matches 3 run return run tellraw @s {text:"Mace: Evolved Mace (100 Kills, permanent).",color:"gray"}
execute if score @s mp.evolve matches 4 run return run tellraw @s {text:"Mace: GOD MACE.",color:"gold"}
execute if score @s mp.evolve matches 2 run return run tellraw @s [{text:"Mace: awakened Evolved Mace (",color:"gray"},{score:{name:"@s",objective:"mp.evolve_kills"}},{text:" Evolved kills)."}]
tellraw @s [{text:"Mace tier: ",color:"gray"},{score:{name:"@s",objective:"mp.tier"},color:"gold"}]
