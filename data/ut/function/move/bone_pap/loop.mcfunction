#By Nebulirion

scoreboard players add @s[tag=!effect_shocked] mpcooldown 1

execute unless data entity @s SelectedItem.components."minecraft:custom_data".bone_pap run function ut:move/bone_pap/stop

scoreboard players remove @s plt1 1
scoreboard players add @s plt1b 1

execute if score @s[tag=attack_buffed] plt1b matches 1 anchored eyes run function ut:move/bluebone/cast
execute if score @s plt1b matches 2.. anchored eyes run function ut:move/bone/cast
execute if score @s plt1b matches 2.. run scoreboard players set @s plt1b 0

execute if score @s plt1 matches ..0 run function ut:move/bone_pap/stop