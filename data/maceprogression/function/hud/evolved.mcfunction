execute if score @s mp.evolve matches 1 run scoreboard players operation #cur mp.tmp = @s mp.evolve_kills
execute if score @s mp.evolve matches 1 run scoreboard players set #need mp.tmp 8
execute if score @s mp.evolve matches 1 run data modify storage maceprogression:hud l set value "Dormant"
execute if score @s mp.evolve matches 2 run scoreboard players operation #cur mp.tmp = @s mp.evolve_kills
execute if score @s mp.evolve matches 2 run scoreboard players remove #cur mp.tmp 8
execute if score @s mp.evolve matches 2 run scoreboard players set #need mp.tmp 15
execute if score @s mp.evolve matches 2 run data modify storage maceprogression:hud l set value "Awakened"
function maceprogression:hud/fill
function maceprogression:hud/draw_evolved with storage maceprogression:hud
