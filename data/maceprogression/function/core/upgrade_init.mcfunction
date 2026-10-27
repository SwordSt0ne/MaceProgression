scoreboard players operation @s mp.prev_taken = @s mp.taken
scoreboard players operation @s mp.prev_totem = @s mp.totem
execute unless score @s mp.pid matches 1.. run function maceprogression:core/assign_pid
execute unless score @s mp.progress matches 0.. run function maceprogression:tiers/floor
execute unless score @s mp.att_age matches 0.. run scoreboard players set @s mp.att_age 0
execute if score @s mp.evolve matches 1 if score @s mp.evolve_kills matches 8.. run scoreboard players set @s mp.evolve_kills 7
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches ..7 run scoreboard players set @s mp.evolve_kills 8
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 24.. run scoreboard players set @s mp.evolve_kills 23
execute if score @s mp.evolve matches 3..4 run scoreboard players set @s mp.evolve_kills 23
scoreboard players set @s mp.init 3
