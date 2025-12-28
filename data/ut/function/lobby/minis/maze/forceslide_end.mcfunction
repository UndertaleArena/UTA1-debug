#By Nebulirion

tag @s remove force_slide

execute if score @s maze_direction matches 1 align z run tp @s ~ ~ ~.5
execute if score @s maze_direction matches 2 align x run tp @s ~.5 ~ ~
execute if score @s maze_direction matches 3 align z run tp @s ~ ~ ~.5
execute if score @s maze_direction matches 4 align x run tp @s ~.5 ~ ~

tp @s @s