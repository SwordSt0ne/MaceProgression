scoreboard players set @s mp.restart 0
scoreboard players set @s mp.evolve 0
scoreboard players set @s mp.evolve_kills 0
scoreboard players set @s mp.progress 0
function maceprogression:curse/lift
scoreboard players set @s mp.spec 0
scoreboard players set @s mp.heal_pool 0
scoreboard players set @s mp.tier 1
function maceprogression:item/build
title @s title {text:"REBORN",color:"gray",bold:true}
title @s subtitle {text:"Your journey begins again",color:"gray"}
tellraw @a [{selector:"@s",color:"gray"},{text:" has set their Perfected Mace aside and started over.",color:"gray"}]
