execute store result score #dt mp.tmp run time query daytime
execute unless score #prev mp.tmp matches 0.. run scoreboard players operation #prev mp.tmp = #dt mp.tmp
execute if score #prev mp.tmp matches ..12999 if score #dt mp.tmp matches 13000.. run function maceprogression:bloodmoon/night
execute if score #bloodmoon mp.tmp matches 1 if score #dt mp.tmp matches ..12999 run function maceprogression:bloodmoon/end
scoreboard players operation #prev mp.tmp = #dt mp.tmp
