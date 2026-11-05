execute if score @s mp.tier matches ..0 run scoreboard players set @s mp.tier 1
execute if score @s mp.tier matches 8.. run scoreboard players set @s mp.tier 7
execute unless score @s mp.built = @s mp.tier run function maceprogression:core/tier_apply
