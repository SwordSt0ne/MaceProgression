scoreboard players set @s mp.spec 1
title @s times 5 50 15
title @s subtitle {text:"Specialization chosen",color:"gray"}
title @s title {text:"JUGGERNAUT",color:"aqua",bold:true}
tellraw @s {text:"You chose the path of the Juggernaut.",color:"aqua",bold:true}
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1
execute if score @s mp.tier matches 5.. run function maceprogression:core/recover
function maceprogression:tiers/check_advance
function maceprogression:tiers/check_advance
function maceprogression:tiers/check_advance
