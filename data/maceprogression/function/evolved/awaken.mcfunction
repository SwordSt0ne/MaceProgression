scoreboard players set @s mp.evolve 2
function maceprogression:evolved/awakened
tellraw @s {text:"Your Evolved Mace awakens! Its enchantments return, along with Strength I and Speed I.",color:"dark_red",bold:true}
playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.5 1.5
