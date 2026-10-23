scoreboard players set @s mp.evolve 1
scoreboard players set @s mp.evolve_kills 0
scoreboard players set @s mp.heal_pool 0
function maceprogression:evolved/dormant
tellraw @s {text:"Your Mace has become dormant and hungers for blood. Every hit heals you for 10% of the damage dealt. Claim 10 kills to awaken it.",color:"dark_red"}
