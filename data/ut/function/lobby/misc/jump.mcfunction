#By Nebulirion and ANTHINY changed :)

data modify storage ut:macro a set from entity @s equipment.feet.components."custom_name".extra[0].extra.[0]
function ut:lobby/misc/jump_a with storage ut:macro

execute if score frisk_jump stat matches 1 run effect give @s jump_boost 1 2 true
execute if score frisk_jump stat matches 2 run effect give @s jump_boost 1 3 true
execute if score frisk_jump stat matches 3 run effect give @s jump_boost 1 4 true
execute if score frisk_jump stat matches 4 run effect give @s jump_boost 1 5 true
execute if score frisk_jump stat matches 5 run effect give @s jump_boost 1 6 true
execute if score frisk_jump stat matches 6 run effect give @s jump_boost 1 7 true
execute if score frisk_jump stat matches 7 run effect give @s jump_boost 1 8 true
execute if score frisk_jump stat matches 8 run effect give @s jump_boost 1 9 true
execute if score frisk_jump stat matches 9 run effect give @s jump_boost 1 10 true
execute if score frisk_jump stat matches 10 run effect give @s jump_boost 1 11 true
execute if score frisk_jump stat matches 11 run effect give @s jump_boost 1 12 true
execute if score frisk_jump stat matches 12 run effect give @s jump_boost 1 13 true
execute if score frisk_jump stat matches 13 run effect give @s jump_boost 1 14 true
execute if score frisk_jump stat matches 14 run effect give @s jump_boost 1 15 true
execute if score frisk_jump stat matches 15 run effect give @s jump_boost 1 16 true
execute if score frisk_jump stat matches 16 run effect give @s jump_boost 1 17 true
execute if score frisk_jump stat matches 17 run effect give @s jump_boost 1 18 true
execute if score frisk_jump stat matches 18 run effect give @s jump_boost 1 19 true
execute if score frisk_jump stat matches 19 run effect give @s jump_boost 1 20 true
execute if score frisk_jump stat matches 20.. run effect give @s jump_boost 1 26 true
#execute if entity @s[advancements={ut:chr/frisk/lv20=true}] run effect give @s jump_boost 1 26 true
execute store result score #upmotion store run data get entity @s Motion[1] 10000
execute if score #upmotion store matches 1.. if block ~ ~3 ~ white_stained_glass run effect give @s levitation 1 20 true
execute if score #upmotion store matches 1.. if block ~ ~3 ~ white_stained_glass run tp @s 196.5 207 1281.5 ~ ~
