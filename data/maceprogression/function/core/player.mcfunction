execute unless score @s mp.init matches 1.. run function maceprogression:core/first_join
execute if score @s mp.init matches 1..2 run function maceprogression:core/upgrade_init

# stat deltas
scoreboard players operation #dth mp.tmp = @s mp.deaths
scoreboard players operation #dth mp.tmp -= @s mp.prev_deaths
scoreboard players operation @s mp.prev_deaths = @s mp.deaths
scoreboard players operation #dd mp.tmp = @s mp.damage
scoreboard players operation #dd mp.tmp -= @s mp.prev_damage
scoreboard players operation @s mp.prev_damage = @s mp.damage
scoreboard players operation #bd mp.tmp = @s mp.blocked
scoreboard players operation #bd mp.tmp -= @s mp.prev_blocked
scoreboard players operation @s mp.prev_blocked = @s mp.blocked
scoreboard players operation @s mp.taken_d = @s mp.taken
scoreboard players operation @s mp.taken_d -= @s mp.prev_taken
scoreboard players operation @s mp.prev_taken = @s mp.taken
scoreboard players operation @s mp.totem_d = @s mp.totem
scoreboard players operation @s mp.totem_d -= @s mp.prev_totem
scoreboard players operation @s mp.prev_totem = @s mp.totem
scoreboard players operation #ld mp.tmp = @s mp.leaves
scoreboard players operation #ld mp.tmp -= @s mp.prev_leaves
scoreboard players operation @s mp.prev_leaves = @s mp.leaves

# remember who last hit me with a progression mace (kill credit is given on death)
execute if score @s mp.att_age matches 1.. run scoreboard players remove @s mp.att_age 1
execute if score @s mp.taken_d matches 1.. run function maceprogression:core/track_attacker

# death: credit the killer, then apply the death penalty
execute if score #dth mp.tmp matches 1.. run function maceprogression:core/on_death

# lifesteal
execute if score #dd mp.tmp matches 1.. if score @s mp.evolve matches 1.. if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:evolved/lifesteal
execute if score @s mp.heal_pool matches 100.. run function maceprogression:evolved/heal_step

# GOD MACE: lightning on hit
execute if score #dd mp.tmp matches 1.. if score @s mp.evolve matches 4 if items entity @s weapon.mainhand mace[custom_data~{mp_god:1b}] if predicate maceprogression:chance_10 run function maceprogression:evolved/god_lightning

# shieldbreaker
execute if score #bd mp.tmp matches 1.. run function maceprogression:evolved/shield_blocked

# tier 7 evolution offer on rejoin
execute if score #ld mp.tmp matches 1.. if score @s mp.tier matches 7 if score @s mp.evolve matches 0 run function maceprogression:evolved/offer

# pending final choice is shown again on rejoin
execute if score #ld mp.tmp matches 1.. if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 23.. run function maceprogression:evolved/apex_offer

# recover a missing mace and purge Ender Chest copies
function maceprogression:core/ender_scan
execute unless items entity @s container.* mace[custom_data~{mp_mace:1b}] unless items entity @s weapon.offhand mace[custom_data~{mp_mace:1b}] run function maceprogression:core/recover
