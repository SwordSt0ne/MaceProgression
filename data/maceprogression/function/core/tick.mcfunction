kill @e[type=item,nbt={Item:{id:"minecraft:mace",components:{"minecraft:custom_data":{mp_mace:1b}}}}]
execute as @a run function maceprogression:core/player
execute as @a[scores={mp.taken_d=400..,mp.totem_d=1..}] run function maceprogression:evolved/god_totem
execute as @a[scores={mp.evo_accept=1..}] run function maceprogression:evolved/accept_check
execute as @a[scores={mp.evo_decline=1..}] run function maceprogression:evolved/decline_check
execute as @a[scores={mp.restart=1..}] run function maceprogression:evolved/restart_check
execute as @a[scores={mp.apex_keep=1..}] run function maceprogression:evolved/apex_keep_check
execute as @a[scores={mp.apex_god=1..}] run function maceprogression:evolved/apex_god_check
scoreboard players add #t mp.tmp 1
execute if score #t mp.tmp matches 20.. run function maceprogression:core/effects_tick
