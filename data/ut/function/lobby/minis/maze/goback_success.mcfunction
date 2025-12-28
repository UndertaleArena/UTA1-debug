#By Nebulirion

execute store result score -new maze_x run data get entity @e[type=marker,tag=maze_police,limit=1] Pos[0] 100
execute store result score -new maze_z run data get entity @e[type=marker,tag=maze_police,limit=1] Pos[2] 100

scoreboard players set -gobackcan maze_timer 0

execute store result entity @e[type=marker,tag=maze_police,limit=1] Pos[0] double 0.01 run scoreboard players get @s maze_x 
execute store result entity @e[type=marker,tag=maze_police,limit=1] Pos[2] double 0.01 run scoreboard players get @s maze_z

execute at @e[tag=maze_police,limit=1] align xyz run tp @s ~.5 ~ ~.5
tp @s @s

scoreboard players operation @s maze_x = -new maze_x
scoreboard players operation @s maze_z = -new maze_z

execute at @s run function ut:lobby/minis/maze/player_loop_pcheck