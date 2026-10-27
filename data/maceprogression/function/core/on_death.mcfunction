function maceprogression:core/calc_rank
execute if score @s mp.att_age matches 1.. run function maceprogression:core/credit_killer
function maceprogression:core/death_penalty
scoreboard players set @s mp.att_age 0
scoreboard players set @s mp.heal_pool 0
