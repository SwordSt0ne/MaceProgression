execute unless score @s mp.init matches 1 run function maceprogression:core/first_join

# stat deltas
scoreboard players operation #dth mp.tmp = @s mp.deaths
scoreboard players operation #dth mp.tmp -= @s mp.prev_deaths
scoreboard players operation @s mp.prev_deaths = @s mp.deaths
scoreboard players operation #kd mp.tmp = @s mp.kills
scoreboard players operation #kd mp.tmp -= @s mp.prev_kills
scoreboard players operation @s mp.prev_kills = @s mp.kills
scoreboard players operation #dd mp.tmp = @s mp.damage
scoreboard players operation #dd mp.tmp -= @s mp.prev_damage
scoreboard players operation @s mp.prev_damage = @s mp.damage
scoreboard players operation #bd mp.tmp = @s mp.blocked
scoreboard players operation #bd mp.tmp -= @s mp.prev_blocked
scoreboard players operation @s mp.prev_blocked = @s mp.blocked
scoreboard players operation #ld mp.tmp = @s mp.leaves
scoreboard players operation #ld mp.tmp -= @s mp.prev_leaves
scoreboard players operation @s mp.prev_leaves = @s mp.leaves

# death reset
execute if score #dth mp.tmp matches 1.. run function maceprogression:core/on_death

# kills made with the tagged mace in the main hand
execute if score #kd mp.tmp matches 1.. run function maceprogression:core/kill_loop

# evolved lifesteal
execute if score #dd mp.tmp matches 1.. if score @s mp.evolve matches 1.. if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:evolved/lifesteal
execute if score @s mp.heal_pool matches 100.. run function maceprogression:evolved/heal_step

# shieldbreaker
execute if score #bd mp.tmp matches 1.. run function maceprogression:evolved/shield_blocked

# tier 7 evolution offer on rejoin
execute if score #ld mp.tmp matches 1.. if score @s mp.tier matches 7 if score @s mp.evolve matches 0 run function maceprogression:evolved/offer

# pending 100-kill offer is shown again on rejoin
execute if score #ld mp.tmp matches 1.. if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 100.. run function maceprogression:evolved/apex_offer

# recover a missing mace and purge Ender Chest copies
function maceprogression:core/ender_scan
execute unless items entity @s container.* mace[custom_data~{mp_mace:1b}] unless items entity @s weapon.offhand mace[custom_data~{mp_mace:1b}] run function maceprogression:core/recover
