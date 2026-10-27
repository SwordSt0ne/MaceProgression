function maceprogression:core/calc_rank
# base value: 1 kill; 2 if the victim outranks you; 0 if the victim is 3+ ranks below you
scoreboard players set #v mp.tmp 1
execute if score #vr mp.tmp > @s mp.rank run scoreboard players set #v mp.tmp 2
scoreboard players operation #d mp.tmp = @s mp.rank
scoreboard players operation #d mp.tmp -= #vr mp.tmp
execute if score #d mp.tmp matches 3.. run scoreboard players set #v mp.tmp 0
# anti-farm: the same killer/victim pair only counts once every 5 minutes
execute store result storage maceprogression:tmp a int 1 run scoreboard players get @s mp.pid
execute store result storage maceprogression:tmp b int 1 run scoreboard players get #vp mp.tmp
function maceprogression:core/farm_check with storage maceprogression:tmp
# GOD bounty: +3 for killing the GOD MACE holder
execute if score #vr mp.tmp matches 10 if score #v mp.tmp matches 1.. run function maceprogression:flair/dethrone
execute if score #v mp.tmp matches 0 run tellraw @s {text:"That kill gave no progress.",color:"gray"}
execute if score #v mp.tmp matches 1.. run tellraw @s [{text:"Kill credited: +",color:"gold"},{score:{name:"#v",objective:"mp.tmp"}}]
execute if score #v mp.tmp matches 1.. run function maceprogression:core/credit_loop
