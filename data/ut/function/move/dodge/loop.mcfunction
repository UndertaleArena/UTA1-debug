#By Nebulirion

execute anchored eyes run particle dust{color:[0.0,0.8,0.8],scale:0.8} ^0.15 ^0.15 ^0.5 0 0 0 1 3 force @a

execute unless data entity @s SelectedItem.components.minecraft:custom_data.dodge run function ut:move/dodge/stop

scoreboard players remove @s plt2 1
scoreboard players add @s unloadtime 1
execute if score @s plt2 matches ..0 run function ut:move/dodge/stop