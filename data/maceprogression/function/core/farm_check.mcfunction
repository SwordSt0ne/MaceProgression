execute store result score #now mp.tmp run time query gametime
$execute if score #f$(a)_$(b) mp.farm > #now mp.tmp run scoreboard players set #v mp.tmp 0
scoreboard players operation #exp mp.tmp = #now mp.tmp
scoreboard players add #exp mp.tmp 6000
$execute if score #v mp.tmp matches 1.. run scoreboard players operation #f$(a)_$(b) mp.farm = #exp mp.tmp
