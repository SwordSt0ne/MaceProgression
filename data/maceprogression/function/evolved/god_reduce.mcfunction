execute unless items entity @s container.* mace[custom_data~{mp_god:1b}] unless items entity @s weapon.offhand mace[custom_data~{mp_god:1b}] run return 0
scoreboard players operation #r mp.tmp = @s mp.taken_d
scoreboard players operation #r mp.tmp *= #3 mp.tmp
scoreboard players operation @s mp.heal_pool += #r mp.tmp
execute if score @s mp.heal_pool matches 4001.. run scoreboard players set @s mp.heal_pool 4000
