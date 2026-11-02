execute if score @s mp.tier matches ..0 run scoreboard players set @s mp.tier 1
execute if score @s mp.tier matches 8.. run scoreboard players set @s mp.tier 7
execute if score @s mp.tier matches 1 unless items entity @s container.* mace[custom_data~{mp_tier:1}] unless items entity @s weapon.offhand mace[custom_data~{mp_tier:1}] run function maceprogression:core/tier_apply_1
execute if score @s mp.tier matches 2 unless items entity @s container.* mace[custom_data~{mp_tier:2}] unless items entity @s weapon.offhand mace[custom_data~{mp_tier:2}] run function maceprogression:core/tier_apply_2
execute if score @s mp.tier matches 3 unless items entity @s container.* mace[custom_data~{mp_tier:3}] unless items entity @s weapon.offhand mace[custom_data~{mp_tier:3}] run function maceprogression:core/tier_apply_3
execute if score @s mp.tier matches 4 unless items entity @s container.* mace[custom_data~{mp_tier:4}] unless items entity @s weapon.offhand mace[custom_data~{mp_tier:4}] run function maceprogression:core/tier_apply_4
execute if score @s mp.tier matches 5 unless items entity @s container.* mace[custom_data~{mp_tier:5}] unless items entity @s weapon.offhand mace[custom_data~{mp_tier:5}] run function maceprogression:core/tier_apply_5
execute if score @s mp.tier matches 6 unless items entity @s container.* mace[custom_data~{mp_tier:6}] unless items entity @s weapon.offhand mace[custom_data~{mp_tier:6}] run function maceprogression:core/tier_apply_6
execute if score @s mp.tier matches 7 unless items entity @s container.* mace[custom_data~{mp_tier:7}] unless items entity @s weapon.offhand mace[custom_data~{mp_tier:7}] run function maceprogression:core/tier_apply_7
