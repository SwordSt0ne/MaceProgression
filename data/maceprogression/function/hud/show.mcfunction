execute if score @s mp.evolve matches 3 run return run title @s actionbar {text:"Perfected Evolved Mace",color:"dark_red"}
execute if score @s mp.evolve matches 4 run return run title @s actionbar {text:"GOD MACE",color:"gold",bold:true}
execute if score @s mp.evolve matches 1..2 run return run function maceprogression:hud/evolved
function maceprogression:hud/standard
