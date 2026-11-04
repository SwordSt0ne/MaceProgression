scoreboard players set @s mp.curse 3
tellraw @s [{text:"You take the Curse of the Brittle. ",color:"dark_purple",bold:true},{text:"Your armor and armor toughness are reduced by 20%. +1 progress on every counted kill until you die.",color:"gray"}]
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 1 0.6
function maceprogression:curse/tick
