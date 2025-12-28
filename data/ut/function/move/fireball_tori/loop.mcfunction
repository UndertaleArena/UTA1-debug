#By Nebulirion

execute unless data entity @s SelectedItem.components."minecraft:custom_data".fireball_tori run function ut:move/fireball_tori/stop

scoreboard players remove @s plt1 1
scoreboard players add @s plt1b 1
scoreboard players add @s[tag=attack_buffed] plt1b 1

execute if score @s plt1b matches 8.. run function ut:move/fireball_tori/loop_fire

execute if score @s plt1 matches ..0 run function ut:move/fireball_tori/stop