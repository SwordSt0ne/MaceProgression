scoreboard players set @s mp.curse 1
tellraw @s [{text:"You take the Curse of the Glass Cannon. ",color:"dark_purple",bold:true},{text:"You have 4 fewer hearts, but hit 30% harder. +1 progress on every counted kill until you die.",color:"gray"}]
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 1 0.6
function maceprogression:curse/tick
