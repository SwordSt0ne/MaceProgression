scoreboard players set @s mp.tier 7
execute if score @s mp.spec matches 1 run return run function maceprogression:tiers/t7_1
execute if score @s mp.spec matches 2 run return run function maceprogression:tiers/t7_2
execute if score @s mp.spec matches 3 run return run function maceprogression:tiers/t7_3
function maceprogression:tiers/t7_0
