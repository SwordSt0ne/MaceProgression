scoreboard players set @s mp.spec_note 1
scoreboard players set #sp mp.tmp 1
tellraw @s ["",{text:"A specialization is now available for your Mace! ",color:"aqua",bold:true},{text:"Do you want to open the specializations menu? ",color:"gray"},{text:"[OPEN MENU]",color:"green",bold:true,click_event:{action:"show_dialog",dialog:"maceprogression:specialization"},hover_event:{action:"show_text",value:"Choose your path: Juggernaut, Skirmisher or Stormcaller."}},{text:"\nYou cannot reach Tier 5 until you choose. You can reopen the menu any time with /trigger mp.spec_pick.",color:"gray"}]
playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.5
