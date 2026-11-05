# Passive effects of every non-GOD kit. Tier score: 1-7 standard, 8 Dormant, 9 Awakened/Perfected.
# Haste I: everyone from Tier 2 up
execute unless score @s mp.tier matches 1 run effect give @s minecraft:haste 3 0 true
# Strength I: no path from Tier 5, Juggernaut and Stormcaller from Tier 6, Awakened (all but Skirmisher)
execute if score @s mp.evolve matches ..0 if score @s mp.spec matches 0 if score @s mp.tier matches 5.. run effect give @s minecraft:strength 3 0 true
execute if score @s mp.evolve matches ..0 if score @s mp.spec matches 1 if score @s mp.tier matches 6.. run effect give @s minecraft:strength 3 0 true
execute if score @s mp.evolve matches ..0 if score @s mp.spec matches 3 if score @s mp.tier matches 6.. run effect give @s minecraft:strength 3 0 true
execute if score @s mp.evolve matches 2..3 unless score @s mp.spec matches 2 run effect give @s minecraft:strength 3 0 true
# Speed: no path from Tier 6, Skirmisher (II at Tier 7 and Awakened), Dormant and Awakened without a path
execute if score @s mp.evolve matches ..0 if score @s mp.spec matches 0 if score @s mp.tier matches 6.. run effect give @s minecraft:speed 3 0 true
execute if score @s mp.evolve matches ..0 if score @s mp.spec matches 2 if score @s mp.tier matches 5..6 run effect give @s minecraft:speed 3 0 true
execute if score @s mp.evolve matches ..0 if score @s mp.spec matches 2 if score @s mp.tier matches 7 run effect give @s minecraft:speed 3 1 true
execute if score @s mp.evolve matches 1 if score @s mp.spec matches 0 run effect give @s minecraft:speed 3 0 true
execute if score @s mp.evolve matches 1 if score @s mp.spec matches 2 run effect give @s minecraft:speed 3 0 true
execute if score @s mp.evolve matches 2..3 if score @s mp.spec matches 0 run effect give @s minecraft:speed 3 0 true
execute if score @s mp.evolve matches 2..3 if score @s mp.spec matches 2 run effect give @s minecraft:speed 3 1 true
# Resistance I: Juggernaut from Tier 5
execute if score @s mp.spec matches 1 if score @s mp.tier matches 5.. run effect give @s minecraft:resistance 3 0 true
# Fire Resistance: Stormcaller from Tier 5
execute if score @s mp.spec matches 3 if score @s mp.tier matches 5.. run effect give @s minecraft:fire_resistance 3 0 true
