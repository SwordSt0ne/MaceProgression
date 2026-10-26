tag @s add mp.tvic
execute at @s as @a[tag=!mp.tvic,distance=..8,scores={mp.evolve=4}] if items entity @s weapon.mainhand mace[custom_data~{mp_god:1b}] run tag @s add mp.tatt
execute at @s as @p[tag=mp.tatt] run function maceprogression:evolved/god_totem_kill
tag @a[tag=mp.tatt] remove mp.tatt
tag @s remove mp.tvic
