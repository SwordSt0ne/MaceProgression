scoreboard players set @s mp.evolve 4
scoreboard players set @s mp.evolve_kills 15
function maceprogression:item/build
tellraw @s {text:"You have claimed the GOD MACE.",color:"gold",bold:true}
function maceprogression:flair/coronation
