scoreboard objectives add mp.tier dummy
scoreboard objectives add mp.deaths deathCount
scoreboard objectives add mp.prev_deaths dummy
scoreboard objectives add mp.kills playerKillCount
scoreboard objectives add mp.prev_kills dummy
scoreboard objectives add mp.leaves custom:leave_game
scoreboard objectives add mp.prev_leaves dummy
scoreboard objectives add mp.evolve dummy
scoreboard objectives add mp.evolve_kills dummy
scoreboard objectives add mp.damage custom:damage_dealt
scoreboard objectives add mp.prev_damage dummy
scoreboard objectives add mp.blocked custom:damage_blocked_by_shield
scoreboard objectives add mp.prev_blocked dummy
scoreboard objectives add mp.block_amt dummy
scoreboard objectives add mp.heal_pool dummy
scoreboard objectives add mp.init dummy
scoreboard objectives add mp.tmp dummy
scoreboard objectives add mp.evo_accept trigger
scoreboard objectives add mp.evo_decline trigger
scoreboard objectives modify mp.tier displayname {text:"Mace Tier",color:"gold"}
scoreboard objectives setdisplay sidebar mp.tier
scoreboard players set #10 mp.tmp 10
scoreboard players set #t mp.tmp 0
