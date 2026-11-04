scoreboard players set @s mp.curse 1
tellraw @s [{text:"You take the Curse of the Frail. ",color:"dark_purple",bold:true},{text:"You have 4 fewer hearts. +1 progress on every counted kill until you die.",color:"gray"}]
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 1 0.6
function maceprogression:curse/tick
