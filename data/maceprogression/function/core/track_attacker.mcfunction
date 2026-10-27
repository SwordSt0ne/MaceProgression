scoreboard players set #has mp.tmp 0
execute on attacker if entity @s[type=player] if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:core/report_pid
execute if score #has mp.tmp matches 1 run scoreboard players operation @s mp.last_att = #att mp.tmp
execute if score #has mp.tmp matches 1 run scoreboard players set @s mp.att_age 100
