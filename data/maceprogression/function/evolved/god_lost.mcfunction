scoreboard players set @s mp.evolve 2
scoreboard players set @s mp.evolve_kills 5
function maceprogression:item/build
tellraw @s {text:"You died. The GOD MACE is lost, and your Evolved Mace returns to the start of its Awakened stage.",color:"red",bold:true}
