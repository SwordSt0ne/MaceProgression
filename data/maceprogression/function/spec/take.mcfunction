scoreboard players operation @s mp.spec = #p mp.tmp
scoreboard players remove @s mp.spec 10
title @s times 5 50 15
title @s subtitle {text:"Specialization chosen",color:"gray"}
execute if score @s mp.spec matches 1 run title @s title {text:"JUGGERNAUT",color:"aqua",bold:true}
execute if score @s mp.spec matches 2 run title @s title {text:"SKIRMISHER",color:"aqua",bold:true}
execute if score @s mp.spec matches 3 run title @s title {text:"STORMCALLER",color:"aqua",bold:true}
execute if score @s mp.spec matches 1 run tellraw @s {text:"You chose the path of the Juggernaut.",color:"aqua",bold:true}
execute if score @s mp.spec matches 2 run tellraw @s {text:"You chose the path of the Skirmisher.",color:"aqua",bold:true}
execute if score @s mp.spec matches 3 run tellraw @s {text:"You chose the path of the Stormcaller.",color:"aqua",bold:true}
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1
execute if score @s mp.tier matches 5.. run function maceprogression:item/build
function maceprogression:tiers/check_advance
function maceprogression:tiers/check_advance
function maceprogression:tiers/check_advance
