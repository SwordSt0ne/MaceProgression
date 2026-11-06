# the container hit, plus its neighbours (the other half of a double chest)
function maceprogression:soulbound/purge_block
execute positioned ~1 ~ ~ run function maceprogression:soulbound/purge_block
execute positioned ~-1 ~ ~ run function maceprogression:soulbound/purge_block
execute positioned ~ ~ ~1 run function maceprogression:soulbound/purge_block
execute positioned ~ ~ ~-1 run function maceprogression:soulbound/purge_block
