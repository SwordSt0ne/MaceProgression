execute if score @s mp.tier matches 7.. run return 0
function maceprogression:tiers/bounds
execute if score @s mp.progress < #nx mp.tmp run return 0
# Tier 4 -> 5 needs a specialization; the prompt is shown at most once per kill
execute if score @s mp.tier matches 4 unless score @s mp.spec matches 1..3 unless score #sp mp.tmp matches 1 run function maceprogression:spec/offer
execute if score @s mp.tier matches 4 unless score @s mp.spec matches 1..3 run return 0
function maceprogression:tiers/advance
