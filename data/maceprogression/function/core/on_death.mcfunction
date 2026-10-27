scoreboard players set #crowned mp.tmp 0
function maceprogression:core/calc_rank
execute if score @s mp.att_age matches 1.. run function maceprogression:core/credit_killer
execute if score @s mp.evolve matches 4 if score #crowned mp.tmp matches 0 run tellraw @a [{text:"★ ",color:"gold"},{selector:"@s",color:"red",bold:true},{text:" has lost the GOD MACE. The crown is free.",color:"gray"}]
function maceprogression:core/death_penalty
scoreboard players set @s mp.att_age 0
scoreboard players set @s mp.heal_pool 0
