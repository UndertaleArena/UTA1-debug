#By Nebulirion


execute as @e[scores={maplock=1},tag=team_spawn,sort=nearest,limit=1] run function ut:game/home/player_base

execute if score @s tid = #this tid run function ut:game/home/player_team
execute unless score @s tid = #this tid if score #home timer matches 1 run function ut:game/home/player_enemy

tag @e[type=marker] remove this_home