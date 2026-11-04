scoreboard players operation #p mp.tmp = @s mp.spec_pick
scoreboard players set @s mp.spec_pick 0
execute unless score @s mp.evolve matches ..0 run return 0
execute if score @s mp.spec matches 1..3 run return run tellraw @s {text:"You have already chosen a specialization.",color:"gray"}
execute if score @s mp.tier matches ..3 run return 0
execute if score #p mp.tmp matches 1 run return run function maceprogression:spec/take_1
execute if score #p mp.tmp matches 2 run return run function maceprogression:spec/take_2
execute if score #p mp.tmp matches 3 run return run function maceprogression:spec/take_3
function maceprogression:spec/offer
