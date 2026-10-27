execute if score @s mp.evolve_kills matches 23.. run return 0
scoreboard players add @s mp.evolve_kills 1
execute if score @s mp.evolve matches 1 if score @s mp.evolve_kills matches 8.. run function maceprogression:evolved/awaken
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 9..13 run function maceprogression:evolved/lifesteal_msg
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 15 run tellraw @s {text:"Shieldbreaker unlocked: your hits now pierce enemy shields.",color:"dark_red",bold:true}
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 23 run function maceprogression:evolved/apex_offer
