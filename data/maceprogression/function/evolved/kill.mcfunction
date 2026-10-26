scoreboard players add @s mp.evolve_kills 1
execute if score @s mp.evolve matches 1 if score @s mp.evolve_kills matches 10.. run function maceprogression:evolved/awaken
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 11.. run tellraw @s [{text:"Your Evolved Mace's lifesteal rises to ",color:"dark_red"},{score:{name:"@s",objective:"mp.evolve_kills"}},{text:"%."}]
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 100 run function maceprogression:evolved/apex_offer
execute if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 20 run tellraw @s {text:"Shieldbreaker unlocked: your hits now pierce enemy shields.",color:"dark_red",bold:true}
