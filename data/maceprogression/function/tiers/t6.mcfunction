scoreboard players set @s mp.tier 6
execute if score @s mp.spec matches 1 run return run function maceprogression:tiers/t6_1
execute if score @s mp.spec matches 2 run return run function maceprogression:tiers/t6_2
execute if score @s mp.spec matches 3 run return run function maceprogression:tiers/t6_3
function maceprogression:tiers/t6_0
