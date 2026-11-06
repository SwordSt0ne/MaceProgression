# steps of 0.25 blocks along the line of sight, up to 6 blocks
execute if block ~ ~ ~ #maceprogression:mace_holders run return run function maceprogression:soulbound/purge_area
scoreboard players add #r mp.tmp 1
execute if score #r mp.tmp matches ..24 positioned ^ ^ ^0.25 run function maceprogression:soulbound/ray
