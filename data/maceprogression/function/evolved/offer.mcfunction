scoreboard players enable @s mp.evo_accept
scoreboard players enable @s mp.evo_decline
tellraw @s ["",{text:"Your Mace can keep growing... But growing comes at a cost.\n",color:"dark_red"},{text:"[ACCEPT]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger mp.evo_accept"},hover_event:{action:"show_text",value:"Evolve into a dormant Evolved Mace"}},{text:" "},{text:"[DECLINE]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger mp.evo_decline"},hover_event:{action:"show_text",value:"Keep the Tier 7 Mace permanently"}}]
