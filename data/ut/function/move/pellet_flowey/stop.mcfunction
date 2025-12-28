#By Nebulirion

scoreboard players reset @s plt1
scoreboard players reset @s plt1b

scoreboard players remove @s[tag=pellets_user] move_loop 1

tag @s remove pellets_user
tag @s remove pellets_user2
tag @s remove pellet_user_snipe

attribute @s generic.movement_speed modifier remove pelletslow

scoreboard players operation #user pid = @s pid
execute as @e[tag=pellet,tag=prep] if score @s pid = #user pid run function ut:void
