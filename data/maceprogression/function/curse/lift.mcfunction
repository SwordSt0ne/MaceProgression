execute if score @s mp.curse matches 1..3 run tellraw @s {text:"Your curse is lifted. You may take a new one with /trigger mp.curse_pick.",color:"dark_purple"}
scoreboard players set @s mp.curse 0
function maceprogression:curse/clear
