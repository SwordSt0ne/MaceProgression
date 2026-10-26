clear @a[tag=mp.tvic] minecraft:totem_of_undying
tellraw @a [{selector:"@a[tag=mp.tvic,limit=1]",color:"gold"},{text:"'s totem was shattered by the GOD MACE.",color:"gold",bold:true}]
damage @a[tag=mp.tvic,limit=1] 1000000 minecraft:generic_kill by @s
