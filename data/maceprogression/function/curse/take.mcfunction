scoreboard players operation @s mp.curse = #p mp.tmp
scoreboard players remove @s mp.curse 10
execute if score @s mp.curse matches 1 run tellraw @s [{text:"You take the Curse of the Frail. ",color:"dark_purple",bold:true},{text:"You have 4 fewer hearts. +1 progress on every counted kill until you die.",color:"gray"}]
execute if score @s mp.curse matches 2 run tellraw @s [{text:"You take the Curse of the Hunted. ",color:"dark_purple",bold:true},{text:"You glow through walls and move 20% slower. +1 progress on every counted kill until you die.",color:"gray"}]
execute if score @s mp.curse matches 3 run tellraw @s [{text:"You take the Curse of the Brittle. ",color:"dark_purple",bold:true},{text:"Your armor and armor toughness are reduced by 20%. +1 progress on every counted kill until you die.",color:"gray"}]
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 1 0.6
function maceprogression:curse/apply
