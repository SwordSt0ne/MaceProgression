tag @s add mp.self
scoreboard players set #has mp.tmp 0
execute as @a[tag=!mp.self,distance=..7,sort=nearest,limit=1] run function maceprogression:core/report_pid
execute if score #has mp.tmp matches 1 run scoreboard players operation @s mp.target = #att mp.tmp
execute if score #has mp.tmp matches 1 run scoreboard players operation @s mp.target_rank = #atr mp.tmp
tag @s remove mp.self
