scoreboard players set @s mp.init 1
scoreboard players set @s mp.evolve 0
scoreboard players set @s mp.evolve_kills 0
scoreboard players set @s mp.progress 0
scoreboard players set @s mp.att_age 0
scoreboard players set @s mp.heal_pool 0
scoreboard players operation @s mp.prev_deaths = @s mp.deaths
scoreboard players operation @s mp.prev_leaves = @s mp.leaves
scoreboard players operation @s mp.prev_damage = @s mp.damage
scoreboard players operation @s mp.prev_blocked = @s mp.blocked
function maceprogression:tiers/t1
tellraw @s {text:"You have been given a soulbound Mace. Kill players with it to grow stronger.",color:"gold"}
