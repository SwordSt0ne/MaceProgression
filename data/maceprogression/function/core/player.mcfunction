execute unless score @s mp.init matches 1.. run function maceprogression:core/first_join
execute if score @s mp.init matches 1..5 run function maceprogression:core/upgrade_init

# stat deltas (#dth/#dd/#bd/#ld are only valid during this player's turn)
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

# the tier score doubles as the stage: Dormant 8, Awakened/Perfected 9, GOD 10
execute if score @s mp.evolve matches 1.. run function maceprogression:core/sync_stage

execute if score #dth mp.tmp matches 1.. run function maceprogression:core/on_death
execute if score @s mp.evolve matches ..0 run function maceprogression:core/tier_sync

# triggers that only exist in certain states
execute if score @s mp.spec matches 0 if score @s mp.tier matches 4.. if score @s mp.evolve matches ..0 run function maceprogression:spec/available
execute if score @s mp.curse matches 0 run scoreboard players enable @s mp.curse_pick
execute if score @s mp.evolve matches 3 run scoreboard players enable @s mp.restart

# hits, healing and shields
execute if score #dd mp.tmp matches 1.. if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run function maceprogression:core/on_hit
execute if score @s mp.heal_pool matches 100.. run function maceprogression:evolved/heal_step
execute if score #bd mp.tmp matches 1.. run function maceprogression:evolved/shield_blocked

# offers shown again on rejoin
execute if score #ld mp.tmp matches 1.. if score @s mp.tier matches 7 if score @s mp.evolve matches 0 run function maceprogression:evolved/offer
execute if score #ld mp.tmp matches 1.. if score @s mp.evolve matches 2 if score @s mp.evolve_kills matches 15.. run function maceprogression:evolved/apex_offer

# soulbound: purge Ender Chest copies, rebuild a missing mace
execute if items entity @s enderchest.* mace[custom_data~{mp_mace:1b}] run function maceprogression:core/ender_scan
execute unless items entity @s container.* mace[custom_data~{mp_mace:1b}] unless items entity @s weapon.offhand mace[custom_data~{mp_mace:1b}] run function maceprogression:item/build
