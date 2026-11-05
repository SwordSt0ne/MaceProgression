execute if score @s mp.tier matches 4 if score @s mp.progress matches 7.. unless score @s mp.spec matches 1..3 run return run title @s actionbar {text:"Specialization ready: /trigger mp.spec_pick",color:"aqua"}
execute if score @s mp.tier matches 7 run return run title @s actionbar [{text:"Tier 7 ",color:"gold"},{text:"MAX",color:"yellow",bold:true}]
function maceprogression:tiers/bounds
scoreboard players operation #cur mp.tmp = @s mp.progress
scoreboard players operation #cur mp.tmp -= #fl mp.tmp
scoreboard players operation #need mp.tmp = #nx mp.tmp
scoreboard players operation #need mp.tmp -= #fl mp.tmp
function maceprogression:hud/fill
execute store result storage maceprogression:hud t int 1 run scoreboard players get @s mp.tier
function maceprogression:hud/draw_tier with storage maceprogression:hud
