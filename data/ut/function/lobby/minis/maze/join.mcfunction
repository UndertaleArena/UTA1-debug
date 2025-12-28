#By Nebulirion

tag @s remove maze_win
tag @s remove force_slide
tag @s remove orange_flavor
tag @s remove lemon_flavor

function ut:lobby/minis/maze/button/give

execute store result score @s maze_x run data get entity @s Pos[0] 100
execute store result score @s maze_z run data get entity @s Pos[2] 100

scoreboard players set @s maze_timer 0
scoreboard players set @s nojump_timer 490129

attribute @s minecraft:generic.jump_strength modifier add ut:maze_effect -.42 add_value
effect clear @s jump_boost