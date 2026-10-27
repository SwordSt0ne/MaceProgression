scoreboard players set #pct mp.tmp 10
execute if score @s mp.evolve matches 2..3 run scoreboard players operation #pct mp.tmp = @s mp.evolve_kills
execute if score @s mp.evolve matches 2..3 run scoreboard players add #pct mp.tmp 2
execute if score #pct mp.tmp matches 16.. run scoreboard players set #pct mp.tmp 15
execute if score @s mp.evolve matches 4 run scoreboard players set #pct mp.tmp 30
scoreboard players operation #heal mp.tmp = #dd mp.tmp
scoreboard players operation #heal mp.tmp *= #pct mp.tmp
scoreboard players operation #heal mp.tmp /= #10 mp.tmp
scoreboard players operation @s mp.heal_pool += #heal mp.tmp
execute if score @s mp.heal_pool matches 4001.. run scoreboard players set @s mp.heal_pool 4000
