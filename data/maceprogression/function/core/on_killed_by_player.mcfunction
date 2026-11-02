# runs as the victim at the moment a player kills them (advancement reward)
advancement revoke @s only maceprogression:killed_by_player
scoreboard players set #has mp.tmp 0
scoreboard players set #dethr mp.tmp 0
execute on attacker if entity @s[type=player] if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:core/report_killer
execute unless score #has mp.tmp matches 1 run return 0
function maceprogression:core/calc_rank
scoreboard players operation #vp mp.tmp = @s mp.pid
scoreboard players operation #vr mp.tmp = @s mp.rank
execute as @a[tag=mp.killer,limit=1] at @s run function maceprogression:core/credit_killer_as
execute if score #dethr mp.tmp matches 1 run function maceprogression:flair/dethrone_announce
tag @a[tag=mp.killer] remove mp.killer
