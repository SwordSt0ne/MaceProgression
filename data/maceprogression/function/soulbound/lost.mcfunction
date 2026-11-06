# The tracked mace left the inventory without being dropped. Instead of scanning every chest, look only where it can
# have gone: the container block the player is looking at, and item-holding entities next to them. Then rebuild it.
scoreboard players set #r mp.tmp 0
execute anchored eyes positioned ^ ^ ^ run function maceprogression:soulbound/ray
execute as @e[type=!player,distance=..8] run function maceprogression:soulbound/purge_entity
function maceprogression:item/build
