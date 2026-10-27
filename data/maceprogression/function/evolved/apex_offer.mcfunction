scoreboard players enable @s mp.apex_keep
scoreboard players enable @s mp.apex_god
tellraw @s ["",{text:"Your Evolved Mace has reached its limit. Choose its final form.\n",color:"dark_red",bold:true},{text:"[KEEP]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger mp.apex_keep"},hover_event:{action:"show_text",value:"Keep a Perfected Evolved Mace forever: it never resets on death, but will not grow any further."}},{text:" "},{text:"[GOD MACE]",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger mp.apex_god"},hover_event:{action:"show_text",value:"Take the GOD MACE and rule the server."}}]
playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.5 1.5
