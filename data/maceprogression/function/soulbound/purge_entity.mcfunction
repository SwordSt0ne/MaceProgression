# chest minecarts and boats, hopper minecarts, donkeys and llamas
data remove entity @s Items[{components:{"minecraft:custom_data":{mp_mace:1b}}}]
data remove entity @s Items[].components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{mp_mace:1b}}}]
# item frames and dropped bundles
execute if items entity @s contents mace[custom_data~{mp_mace:1b}] run data remove entity @s Item
data remove entity @s Item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{mp_mace:1b}}}]
# armor stands, allays and other mobs holding it
execute if items entity @s weapon.mainhand mace[custom_data~{mp_mace:1b}] run item replace entity @s weapon.mainhand with minecraft:air
execute if items entity @s weapon.offhand mace[custom_data~{mp_mace:1b}] run item replace entity @s weapon.offhand with minecraft:air
