scoreboard players operation #kp mp.tmp = @s mp.last_att
scoreboard players operation #vr mp.tmp = @s mp.rank
scoreboard players operation #vp mp.tmp = @s mp.pid
tag @s add mp.dvic
execute as @a if score @s mp.pid = #kp mp.tmp run function maceprogression:core/credit_killer_as
tag @s remove mp.dvic
