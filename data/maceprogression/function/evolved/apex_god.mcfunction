scoreboard players set @s mp.evolve 4
scoreboard players set @s mp.evolve_kills 23
function maceprogression:evolved/god
tellraw @s {text:"You have claimed the GOD MACE.",color:"gold",bold:true}
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
