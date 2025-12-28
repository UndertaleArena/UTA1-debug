#By Nebulirion

execute unless data entity @s SelectedItem.components."minecraft:custom_data".pellets run function ut:move/pellet_flowey/stop

scoreboard players add @s[tag=!effect_shocked] mpcooldown 1

scoreboard players add @s plt1b 1
scoreboard players add @s[tag=attack_buffed] plt1b 4

tag @s remove pellet_user_snipe
execute if score @s shift matches 1.. run tag @s add pellet_user_snipe

execute if score @s plt1 matches 1.. if score @s plt1b matches 5.. if score @s plt1c matches 0..4 anchored eyes run function ut:move/pellet/cast

scoreboard players remove @s plt1 1

execute if score @s plt1 matches ..-75 store result score @s mpcost run data get entity @s SelectedItem.components."minecraft:custom_data".cost
execute if score @s plt1 matches ..-75 run scoreboard players operation @s mp -= @s mpcost
execute if score @s plt1 matches ..-75 run function ut:move/pellet_flowey/use_shoot