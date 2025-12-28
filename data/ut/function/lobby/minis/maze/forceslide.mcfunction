#By Nebulirion

execute if score @s maze_direction matches 1 if block ~ ~ ~.7 barrier run tag @s remove force_slide
execute if score @s maze_direction matches 2 if block ~-.7 ~ ~ barrier run tag @s remove force_slide
execute if score @s maze_direction matches 3 if block ~ ~ ~-.7 barrier run tag @s remove force_slide
execute if score @s maze_direction matches 4 if block ~.7 ~ ~ barrier run tag @s remove force_slide

execute if score @s maze_direction matches 1 run tp @s ~ ~ ~.2 
execute if score @s maze_direction matches 2 run tp @s ~-.2 ~ ~ 
execute if score @s maze_direction matches 3 run tp @s ~ ~ ~-.2
execute if score @s maze_direction matches 4 run tp @s ~.2 ~ ~

tp @s @s