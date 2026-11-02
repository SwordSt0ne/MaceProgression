scoreboard players set #t mp.tmp 0
execute as @a run function maceprogression:core/effects_player
execute as @a if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:hud/show
