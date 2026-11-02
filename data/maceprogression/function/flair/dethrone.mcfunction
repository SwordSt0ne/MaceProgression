# bounty (+3) and head start (+2) toward claiming the crown
scoreboard players add #v mp.tmp 5
scoreboard players set #dethr mp.tmp 1
function maceprogression:flair/dethrone_mark with storage maceprogression:tmp
tellraw @s {text:"You dethroned the GOD MACE holder: +5 kills of progress.",color:"gold"}
