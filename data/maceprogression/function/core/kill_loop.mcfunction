scoreboard players remove #kd mp.tmp 1
execute if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:core/on_kill
execute if score #kd mp.tmp matches 1.. run function maceprogression:core/kill_loop
