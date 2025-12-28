#By Nebulirion

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score -block maze_timer run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

fill ~ 167 ~ ~ 166 ~ air
setblock ~ ~1 ~ air
execute if score -block maze_timer matches 3 run setblock ~ ~1 ~ barrier

execute if score -block maze_timer matches 1 run setblock ~ ~ ~ pink_concrete_powder
execute if score -block maze_timer matches 2 run setblock ~ ~ ~ lime_concrete_powder
execute if score -block maze_timer matches 3 run setblock ~ ~ ~ red_concrete_powder
execute if score -block maze_timer matches 4 run setblock ~ ~ ~ yellow_concrete_powder
execute if score -block maze_timer matches 5 run setblock ~ ~ ~ blue_concrete_powder
execute if score -block maze_timer matches 6 run setblock ~ ~ ~ purple_concrete_powder
execute if score -block maze_timer matches 7 run setblock ~ ~ ~ orange_concrete_powder

scoreboard players remove -row_width maze_timer 1
execute positioned ^1 ^ ^ if score -row_width maze_timer matches 1.. run function ut:lobby/minis/maze/build/block