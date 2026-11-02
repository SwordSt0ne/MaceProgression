execute if score #cur mp.tmp matches ..-1 run scoreboard players set #cur mp.tmp 0
execute if score #cur mp.tmp > #need mp.tmp run scoreboard players operation #cur mp.tmp = #need mp.tmp
scoreboard players operation #f mp.tmp = #cur mp.tmp
scoreboard players operation #f mp.tmp *= #5 mp.tmp
scoreboard players operation #f mp.tmp /= #need mp.tmp
execute store result storage maceprogression:hud f int 1 run scoreboard players get #f mp.tmp
execute store result storage maceprogression:hud c int 1 run scoreboard players get #cur mp.tmp
execute store result storage maceprogression:hud n int 1 run scoreboard players get #need mp.tmp
