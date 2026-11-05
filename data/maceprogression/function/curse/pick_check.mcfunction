scoreboard players operation #p mp.tmp = @s mp.curse_pick
scoreboard players set @s mp.curse_pick 0
execute unless score @s mp.curse matches 0 run return run tellraw @s {text:"You already carry a curse. It lifts when you die.",color:"gray"}
execute if score #p mp.tmp matches 11..13 run return run function maceprogression:curse/take
function maceprogression:curse/menu
