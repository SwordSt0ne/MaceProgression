scoreboard players operation #p mp.tmp = @s mp.evolve_kills
scoreboard players add #p mp.tmp 2
tellraw @s [{text:"Your Evolved Mace's lifesteal rises to ",color:"dark_red"},{score:{name:"#p",objective:"mp.tmp"}},{text:"%."}]
