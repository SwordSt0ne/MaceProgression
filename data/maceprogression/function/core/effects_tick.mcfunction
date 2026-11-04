scoreboard players set #t mp.tmp 0
execute if score #bloodmoon mp.tmp matches 1 run bossbar set maceprogression:bloodmoon players @a
execute as @a run function maceprogression:core/effects_player
execute as @a run function maceprogression:curse/tick
execute as @a run function maceprogression:spec/attr
execute as @a if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:hud/show
