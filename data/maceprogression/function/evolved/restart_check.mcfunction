execute unless score @s mp.evolve matches 3 run return run scoreboard players set @s mp.restart 0
execute if score @s mp.restart matches 2.. run return run function maceprogression:evolved/restart
scoreboard players set @s mp.restart 0
tellraw @s ["",{text:"Restart your Mace from the very beginning? You will lose your Perfected Evolved Mace and return to Tier 1 with no progress.\n",color:"red"},{text:"[CONFIRM RESET]",color:"dark_red",bold:true,click_event:{action:"run_command",command:"/trigger mp.restart set 2"},hover_event:{action:"show_text",value:"Reset everything back to Tier 1. This cannot be undone."}},{text:" (ignore this message to keep your mace)",color:"gray"}]
