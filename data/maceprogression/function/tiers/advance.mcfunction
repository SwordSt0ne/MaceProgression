scoreboard players add @s mp.tier 1
function maceprogression:item/build
tellraw @s [{text:"Your Mace has reached ",color:"gold"},{text:"Tier ",bold:true},{score:{name:"@s",objective:"mp.tier"},bold:true},{text:"!"}]
function maceprogression:flair/tier_up
