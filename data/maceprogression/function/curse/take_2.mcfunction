scoreboard players set @s mp.curse 2
tellraw @s [{text:"You take the Curse of the Hunted. ",color:"dark_purple",bold:true},{text:"You glow through walls and move 10% slower. +1 progress on every counted kill until you die.",color:"gray"}]
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 1 0.6
function maceprogression:curse/tick
