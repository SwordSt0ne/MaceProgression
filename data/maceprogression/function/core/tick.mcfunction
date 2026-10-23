kill @e[type=item,nbt={Item:{id:"minecraft:mace",components:{"minecraft:custom_data":{mp_mace:1b}}}}]
execute as @a run function maceprogression:core/player
execute as @a[scores={mp.evo_accept=1..}] run function maceprogression:evolved/accept_check
execute as @a[scores={mp.evo_decline=1..}] run function maceprogression:evolved/decline_check
scoreboard players add #t mp.tmp 1
execute if score #t mp.tmp matches 20.. run function maceprogression:core/effects_tick
