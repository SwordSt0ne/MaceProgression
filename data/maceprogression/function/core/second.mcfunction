# once per second for every player
function maceprogression:fx/mace
execute if score @s mp.curse matches 1..3 run function maceprogression:curse/apply
function maceprogression:spec/attr
execute if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:hud/show
