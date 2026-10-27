scoreboard players set @s mp.evolve 1
scoreboard players set @s mp.evolve_kills 0
scoreboard players set @s mp.heal_pool 0
function maceprogression:evolved/dormant
tellraw @s {text:"You died. Your Evolved Mace falls back to the start of its Dormant stage.",color:"dark_red"}
