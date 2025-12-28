#By Nebulirion

execute unless data entity @s SelectedItem.components."minecraft:custom_data".pellets run function ut:move/pellet_flowey/stop

scoreboard players remove @s plt1 1
#scoreboard players add @s plt1b 1

scoreboard players operation #user pid = @s pid
execute as @e[tag=pellet,tag=prep] if score @s pid = #user pid run tag @s add pellet_next

scoreboard players operation #player prj_speed = @s prj_speed

scoreboard players set #next aid 2147483647
scoreboard players operation #next aid < @e[tag=pellet_next] aid
execute as @e[tag=pellet_next] if score @s aid = #next aid run function ut:move/pellet/shoot

tag @e[tag=pellet_next] remove pellet_next

execute if score @s plt1 matches ..0 run function ut:move/pellet_flowey/stop