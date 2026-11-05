scoreboard players set #t mp.tmp 0
execute if score #bloodmoon mp.tmp matches 1 run bossbar set maceprogression:bloodmoon players @a
execute as @a run function maceprogression:core/second
