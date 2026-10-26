tag @s add mp.hitter
execute as @e[distance=..8,tag=!mp.hitter,type=!item,type=!experience_orb,type=!area_effect_cloud,type=!marker] run function maceprogression:evolved/god_candidate
tag @s remove mp.hitter
