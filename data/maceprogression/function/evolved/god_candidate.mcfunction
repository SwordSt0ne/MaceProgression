execute store result score #h mp.tmp run data get entity @s HurtTime
execute unless score #h mp.tmp matches 8.. run return 0
execute at @s on attacker if entity @s[tag=mp.hitter] run function maceprogression:evolved/god_strike
