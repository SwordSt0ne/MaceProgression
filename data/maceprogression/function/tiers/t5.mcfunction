scoreboard players set @s mp.tier 5
execute if score @s mp.spec matches 1 run return run function maceprogression:tiers/t5_1
execute if score @s mp.spec matches 2 run return run function maceprogression:tiers/t5_2
execute if score @s mp.spec matches 3 run return run function maceprogression:tiers/t5_3
function maceprogression:tiers/t5_0
