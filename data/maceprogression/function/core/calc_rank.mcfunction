scoreboard players operation @s mp.rank = @s mp.tier
execute if score @s mp.evolve matches 1 run scoreboard players set @s mp.rank 8
execute if score @s mp.evolve matches 2..3 run scoreboard players set @s mp.rank 9
execute if score @s mp.evolve matches 4 run scoreboard players set @s mp.rank 10
