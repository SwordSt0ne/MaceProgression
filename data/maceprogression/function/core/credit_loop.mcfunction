scoreboard players remove #v mp.tmp 1
function maceprogression:core/credit_one
execute if score #v mp.tmp matches 1.. run function maceprogression:core/credit_loop
