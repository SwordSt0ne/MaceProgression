scoreboard objectives add mp.tier dummy
scoreboard objectives add mp.deaths deathCount
scoreboard objectives add mp.prev_deaths dummy
scoreboard objectives add mp.leaves custom:leave_game
scoreboard objectives add mp.prev_leaves dummy
scoreboard objectives add mp.evolve dummy
scoreboard objectives add mp.evolve_kills dummy
scoreboard objectives add mp.damage custom:damage_dealt
scoreboard objectives add mp.prev_damage dummy
scoreboard objectives add mp.blocked custom:damage_blocked_by_shield
scoreboard objectives add mp.prev_blocked dummy
scoreboard objectives add mp.heal_pool dummy
scoreboard objectives add mp.init dummy
scoreboard objectives add mp.built dummy
scoreboard objectives add mp.progress dummy
scoreboard objectives add mp.pid dummy
scoreboard objectives add mp.farm dummy
scoreboard objectives add mp.taken custom:damage_taken
scoreboard objectives add mp.prev_taken dummy
scoreboard objectives add mp.taken_d dummy
scoreboard objectives add mp.totem used:totem_of_undying
scoreboard objectives add mp.prev_totem dummy
scoreboard objectives add mp.totem_d dummy
scoreboard objectives add mp.tmp dummy
scoreboard objectives add mp.evo_accept trigger
scoreboard objectives add mp.evo_decline trigger
scoreboard objectives add mp.apex_keep trigger
scoreboard objectives add mp.apex_god trigger
scoreboard objectives add mp.restart trigger
scoreboard objectives add mp.curse dummy
scoreboard objectives add mp.spec dummy
scoreboard objectives add mp.spec_pick trigger
scoreboard objectives add mp.spec_note dummy
scoreboard objectives add mp.curse_pick trigger
bossbar add maceprogression:bloodmoon {text:"Blood Moon - kills count double",color:"red",bold:true}
bossbar set maceprogression:bloodmoon color red
bossbar set maceprogression:bloodmoon max 1
bossbar set maceprogression:bloodmoon value 1
bossbar set maceprogression:bloodmoon visible false
scoreboard objectives modify mp.tier displayname {text:"Mace Tier",color:"gold"}
scoreboard players set #10 mp.tmp 10
scoreboard players set #5 mp.tmp 5
scoreboard players set #t mp.tmp 0
data modify storage maceprogression:bars filled set value ["","#","##","###","####","#####"]
data modify storage maceprogression:bars empty set value ["-----","----","---","--","-",""]
# mace kits: t<tier>s<spec> standard, d/a/f s<spec> Dormant/Awakened/Perfected (spec 0 = no path)
data modify storage maceprogression:kits t1s0 set value {e:"{density:1,breach:1}",n:"Progression Mace (Tier 1)",c:"gold",d:",mp_tier:1"}
data modify storage maceprogression:kits t2s0 set value {e:"{density:1,breach:1}",n:"Progression Mace (Tier 2)",c:"gold",d:",mp_tier:2"}
data modify storage maceprogression:kits t3s0 set value {e:"{density:2,breach:1}",n:"Progression Mace (Tier 3)",c:"gold",d:",mp_tier:3"}
data modify storage maceprogression:kits t4s0 set value {e:"{density:2,breach:2}",n:"Progression Mace (Tier 4)",c:"gold",d:",mp_tier:4"}
data modify storage maceprogression:kits t5s0 set value {e:"{density:3,breach:2,wind_burst:1}",n:"Progression Mace (Tier 5)",c:"gold",d:",mp_tier:5"}
data modify storage maceprogression:kits t5s1 set value {e:"{density:3,breach:3}",n:"Progression Mace (Tier 5 - Juggernaut)",c:"gold",d:",mp_tier:5"}
data modify storage maceprogression:kits t5s2 set value {e:"{density:2,breach:2,wind_burst:2}",n:"Progression Mace (Tier 5 - Skirmisher)",c:"gold",d:",mp_tier:5"}
data modify storage maceprogression:kits t5s3 set value {e:"{density:2,breach:2,wind_burst:1}",n:"Progression Mace (Tier 5 - Stormcaller)",c:"gold",d:",mp_tier:5"}
data modify storage maceprogression:kits t6s0 set value {e:"{density:3,breach:3,wind_burst:1}",n:"Progression Mace (Tier 6)",c:"gold",d:",mp_tier:6"}
data modify storage maceprogression:kits t6s1 set value {e:"{density:4,breach:3}",n:"Progression Mace (Tier 6 - Juggernaut)",c:"gold",d:",mp_tier:6"}
data modify storage maceprogression:kits t6s2 set value {e:"{density:3,breach:2,wind_burst:2}",n:"Progression Mace (Tier 6 - Skirmisher)",c:"gold",d:",mp_tier:6"}
data modify storage maceprogression:kits t6s3 set value {e:"{density:3,breach:2,wind_burst:1}",n:"Progression Mace (Tier 6 - Stormcaller)",c:"gold",d:",mp_tier:6"}
data modify storage maceprogression:kits t7s0 set value {e:"{density:4,breach:3,wind_burst:1}",n:"Progression Mace (Tier 7)",c:"gold",d:",mp_tier:7"}
data modify storage maceprogression:kits t7s1 set value {e:"{density:5,breach:3}",n:"Progression Mace (Tier 7 - Juggernaut)",c:"gold",d:",mp_tier:7"}
data modify storage maceprogression:kits t7s2 set value {e:"{density:3,breach:2,wind_burst:3}",n:"Progression Mace (Tier 7 - Skirmisher)",c:"gold",d:",mp_tier:7"}
data modify storage maceprogression:kits t7s3 set value {e:"{density:3,breach:3,wind_burst:2}",n:"Progression Mace (Tier 7 - Stormcaller)",c:"gold",d:",mp_tier:7"}
data modify storage maceprogression:kits ds0 set value {e:"{density:2,breach:2}",n:"Evolved Mace (Dormant)",c:"dark_red",d:""}
data modify storage maceprogression:kits ds1 set value {e:"{density:3,breach:2}",n:"Evolved Mace (Dormant - Juggernaut)",c:"dark_red",d:""}
data modify storage maceprogression:kits ds2 set value {e:"{density:2,breach:2,wind_burst:1}",n:"Evolved Mace (Dormant - Skirmisher)",c:"dark_red",d:""}
data modify storage maceprogression:kits ds3 set value {e:"{density:2,breach:2}",n:"Evolved Mace (Dormant - Stormcaller)",c:"dark_red",d:""}
data modify storage maceprogression:kits as0 set value {e:"{density:4,breach:3,wind_burst:1}",n:"Evolved Mace (Awakened)",c:"dark_red",d:""}
data modify storage maceprogression:kits as1 set value {e:"{density:5,breach:3}",n:"Evolved Mace (Awakened - Juggernaut)",c:"dark_red",d:""}
data modify storage maceprogression:kits as2 set value {e:"{density:3,breach:2,wind_burst:3}",n:"Evolved Mace (Awakened - Skirmisher)",c:"dark_red",d:""}
data modify storage maceprogression:kits as3 set value {e:"{density:4,breach:2,wind_burst:2}",n:"Evolved Mace (Awakened - Stormcaller)",c:"dark_red",d:""}
data modify storage maceprogression:kits fs0 set value {e:"{density:4,breach:3,wind_burst:1}",n:"Evolved Mace (Perfected)",c:"dark_red",d:""}
data modify storage maceprogression:kits fs1 set value {e:"{density:5,breach:3}",n:"Evolved Mace (Perfected - Juggernaut)",c:"dark_red",d:""}
data modify storage maceprogression:kits fs2 set value {e:"{density:3,breach:2,wind_burst:3}",n:"Evolved Mace (Perfected - Skirmisher)",c:"dark_red",d:""}
data modify storage maceprogression:kits fs3 set value {e:"{density:4,breach:2,wind_burst:2}",n:"Evolved Mace (Perfected - Stormcaller)",c:"dark_red",d:""}
