data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{mp_mace:1b}}}]
data remove block ~ ~ ~ Items[].components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{mp_mace:1b}}}]
execute if items block ~ ~ ~ container.0 mace[custom_data~{mp_mace:1b}] run item replace block ~ ~ ~ container.0 with minecraft:air
