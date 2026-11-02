execute unless score @s mp.target matches 1.. run return 0
scoreboard players operation #vp mp.tmp = @s mp.target
scoreboard players operation #vr mp.tmp = @s mp.target_rank
function maceprogression:core/credit_killer_as
scoreboard players set @s mp.target 0
