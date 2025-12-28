#By Nebulirion

scoreboard players add @s unloadtime 1
scoreboard players add @s mpcooldown 1

execute unless data entity @s SelectedItem.components."minecraft:custom_data".lazer_ex run function ut:move/lazer_ex/stop

execute if score @s plt1 matches 12.. run scoreboard players add @s plt1b 4
execute if score @s[tag=!attack_buffed] plt1b matches 8.. anchored eyes run function ut:move/lazer_bullet/cast
execute if score @s[tag=attack_buffed] plt1b matches 5.. anchored eyes run function ut:move/lazer_bullet_buffed/cast
execute if score @s[tag=!attack_buffed] plt1b matches 8.. run scoreboard players remove @s plt1b 8
execute if score @s[tag=attack_buffed] plt1b matches 5.. run scoreboard players remove @s plt1b 5

scoreboard players remove @s plt1 2
execute if score @s plt1 matches ..0 run function ut:move/lazer_ex/stop