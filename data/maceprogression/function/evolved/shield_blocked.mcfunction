tag @s add mp.victim
execute at @s as @a[tag=!mp.victim,distance=..8,scores={mp.evolve=2..3,mp.evolve_kills=10..}] if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run tag @s add mp.attacker
execute store result storage maceprogression:tmp amt double 0.1 run scoreboard players get #bd mp.tmp
execute at @s as @p[tag=mp.attacker] run function maceprogression:evolved/pierce with storage maceprogression:tmp
tag @a[tag=mp.attacker] remove mp.attacker
tag @s remove mp.victim
