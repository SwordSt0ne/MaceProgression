execute if score @s mp.evolve matches 1 run data modify storage maceprogression:tmp p set value "d"
execute if score @s mp.evolve matches 2 run data modify storage maceprogression:tmp p set value "a"
execute if score @s mp.evolve matches 3 run data modify storage maceprogression:tmp p set value "f"
function maceprogression:item/evo with storage maceprogression:tmp
