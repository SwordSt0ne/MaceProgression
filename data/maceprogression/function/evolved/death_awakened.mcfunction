scoreboard players set @s mp.evolve_kills 5
function maceprogression:item/build
tellraw @s {text:"You died. Your Evolved Mace falls back to the start of its Awakened stage.",color:"dark_red"}
