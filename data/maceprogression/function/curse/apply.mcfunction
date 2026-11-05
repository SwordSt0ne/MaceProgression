execute if score @s mp.curse matches 1 run attribute @s minecraft:max_health modifier remove maceprogression:curse_hp
execute if score @s mp.curse matches 1 run attribute @s minecraft:max_health modifier add maceprogression:curse_hp -8 add_value
execute if score @s mp.curse matches 2 run effect give @s minecraft:glowing 3 0 true
execute if score @s mp.curse matches 2 run attribute @s minecraft:movement_speed modifier remove maceprogression:curse_slow
execute if score @s mp.curse matches 2 run attribute @s minecraft:movement_speed modifier add maceprogression:curse_slow -0.2 add_multiplied_total
execute if score @s mp.curse matches 3 run attribute @s minecraft:armor modifier remove maceprogression:curse_armor
execute if score @s mp.curse matches 3 run attribute @s minecraft:armor modifier add maceprogression:curse_armor -0.2 add_multiplied_total
execute if score @s mp.curse matches 3 run attribute @s minecraft:armor_toughness modifier remove maceprogression:curse_tough
execute if score @s mp.curse matches 3 run attribute @s minecraft:armor_toughness modifier add maceprogression:curse_tough -0.2 add_multiplied_total
