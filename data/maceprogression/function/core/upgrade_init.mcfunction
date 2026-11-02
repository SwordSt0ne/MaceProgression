scoreboard players operation @s mp.prev_taken = @s mp.taken
scoreboard players operation @s mp.prev_totem = @s mp.totem
execute unless score @s mp.pid matches 1.. run function maceprogression:core/assign_pid
execute unless score @s mp.progress matches 0.. run function maceprogression:tiers/floor
execute if score @s mp.evolve matches 1 if score @s mp.evolve_kills matches 5.. run scoreboard players set @s mp.evolve_kills 4
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches ..4 run scoreboard players set @s mp.evolve_kills 5
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 16.. run scoreboard players set @s mp.evolve_kills 15
execute if score @s mp.evolve matches 3..4 run scoreboard players set @s mp.evolve_kills 15
scoreboard players set @s mp.init 4
