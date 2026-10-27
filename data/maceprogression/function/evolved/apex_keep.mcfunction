scoreboard players set @s mp.evolve 3
scoreboard players set @s mp.evolve_kills 23
function maceprogression:evolved/final
function maceprogression:flair/perfected
tellraw @s {text:"You keep your Evolved Mace forever. It will never reset on death, and it will grow no further. If you ever get bored, type /trigger mp.restart to start over from Tier 1.",color:"dark_red"}
