# Runs every tick. The mace still counts as carried on the cursor, in the 2x2 crafting grid or inside a bundle.
execute if items entity @s container.* mace[custom_data~{mp_mace:1b}] run return 0
execute if items entity @s weapon.offhand mace[custom_data~{mp_mace:1b}] run return 0
execute if items entity @s player.cursor mace[custom_data~{mp_mace:1b}] run return 0
execute if items entity @s player.crafting.* mace[custom_data~{mp_mace:1b}] run return 0
execute if items entity @s container.* *[bundle_contents~{items:{contains:[{items:"minecraft:mace",predicates:{"minecraft:custom_data":{mp_mace:1b}}}]}}] run return 0
function maceprogression:soulbound/lost
