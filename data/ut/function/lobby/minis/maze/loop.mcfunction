#By Nebulirion

tag @a remove maze_player
execute align xyz run tag @a[dx=7,dy=2,dz=54] add maze_player
execute align xyz positioned ~ ~ ~50 as @a[dx=7,dy=2,dz=5,tag=!maze_win] at @s run function ut:lobby/minis/maze/win

execute as @a[tag=maze_player] unless score @s maze_timer matches 1.. at @s run function ut:lobby/minis/maze/join
execute as @a[tag=!maze_player] if score @s maze_timer matches 1.. at @s run function ut:lobby/minis/maze/leave

execute as @a[tag=maze_player] at @s run function ut:lobby/minis/maze/player_loop

execute as @e[tag=maze_piranha] at @s run function ut:lobby/minis/maze/piranha/loop