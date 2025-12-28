#By Nebulirion

####Preload Arena Markers
execute as @e[tag=arena_as,type=!marker] at @s run function ut:game/arena_as_to_marker
tag @e[tag=arena_spawning] remove arena_spawning

#############################################
scoreboard players reset * maplock
tp @a[tag=!sy] ~ ~ ~
scoreboard players set @e[tag=arena_as,distance=..128] maplock 1
execute at @e[tag=arena_as,scores={maplock=1}] run forceload add ~ ~
#############################################

scoreboard players reset * tbid
scoreboard players set #index tbid 0

########Spawn Pos
scoreboard players reset @e[tag=team_spawn] tid
tag @a[tag=play_game] add tobechosen
execute as @e[tag=team_spawn,scores={maplock=1}] at @s run function ut:game/team/spawnpoint
execute as @e[tag=team_spawn,scores={maplock=1}] at @s run scoreboard players operation @s etid = @e[tag=team_spawn,scores={maplock=1},distance=1..,limit=1] tid

execute as @a[tag=tobechosen,tag=!sy] at @s run function ut:game/start_spectator
##############################################

########Low Pos
execute store result score -LowPos y_pos run data get entity @e[tag=arena_low,limit=1,sort=nearest,scores={maplock=1}] Pos[1] 100

########Time
time set 6000
execute if entity @s[tag=arena_night] run time set 18000
execute if score -use map matches 15 run time set 23456
#execute if score @s daytime matches -2147483648..2147483647 run function ut:system/daytime

#######Check Special Map
execute if score -use map matches 19 run function ut:map/s_ruins/load

#######Draw Zones
execute as @e[scores={maplock=1},tag=team_spawn] at @s run function ut:game/home/display/main
execute as @e[scores={maplock=1},tag=arena_point] at @s run function ut:game/siege/point/display/main