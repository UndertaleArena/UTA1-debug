#By Nebulirion

####Preload Arena Markers
execute as @e[tag=arena_as,type=!marker] at @s run function ut:game/arena_as_to_marker
tag @e[tag=arena_spawning] remove arena_spawning
tag @e[tag=team_spawn] add arena_spawn

#############################################
scoreboard players reset * maplock
tp @a[tag=!sy] ~ ~ ~
scoreboard players set @e[tag=arena_as,distance=..128] maplock 1
execute at @e[tag=arena_as,scores={maplock=1}] run forceload add ~ ~
#############################################

########Spawn Pos
#
tag @e[tag=arena_spawn,limit=8,sort=nearest,scores={maplock=1}] add empty_spawn
tag @e[tag=empty_spawn] add active_spawn
scoreboard players reset @e[tag=arena_spawn] tid
tag @a[tag=play_game,tag=!sy] add tobechosen

###Pos1
execute unless score -use map matches 7 as @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=random] at @s run function ut:game/arena/map_spawnpoint
execute if score -use map matches 7 as @e[tag=empty_spawn,tag=arena_spawn_pr,tag=active_spawn,limit=1,sort=random] at @s run function ut:game/arena/map_spawnpoint

###Pos2
execute at @e[tag=!empty_spawn,tag=active_spawn] as @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=furthest] at @s run function ut:game/arena/map_spawnpoint

###Pos3+4
execute as @e[tag=!empty_spawn,tag=active_spawn] at @s run function ut:game/arena/map_t34check
execute as @e[tag=!empty_spawn,tag=active_spawn] at @s run function ut:game/arena/map_t34check
#Pos3
execute as @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=random] at @s run function ut:game/arena/map_spawnpoint
#Pos4
execute as @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=random] at @s run function ut:game/arena/map_spawnpoint
#
tag @e[tag=active_spawn] remove active_spawn
tag @e[tag=empty_spawn] add active_spawn

###Pos5
execute as @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=random] at @s run function ut:game/arena/map_spawnpoint

###Pos6
execute at @e[tag=!empty_spawn,tag=active_spawn] as @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=furthest] at @s run function ut:game/arena/map_spawnpoint

###Pos7
execute as @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=random] at @s run function ut:game/arena/map_spawnpoint

###Pos8
execute as @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=random] at @s run function ut:game/arena/map_spawnpoint

execute as @a[tag=tobechosen,tag=!sy] at @s run function ut:game/start_spectator
tag @e[tag=active_spawn] remove active_spawn
#############################################

########Low Pos
execute store result score -LowPos y_pos run data get entity @e[tag=arena_low,limit=1,sort=nearest,scores={maplock=1}] Pos[1] 100

########Time
time set 6000
execute if entity @s[tag=arena_night] run time set 18000
execute if score -use map matches 15 run time set 23456
#execute if score @s daytime matches -2147483648..2147483647 run function ut:system/daytime

#######Check Special Map
execute if score -use map matches 12 run function ut:map/core/load
execute if score -use map matches 19 run function ut:map/s_ruins/load

#######Draw Zones
execute as @e[scores={maplock=1},tag=team_spawn] at @s run function ut:game/home/display/main
execute as @e[scores={maplock=1},tag=arena_point] at @s run function ut:game/siege/point/display/main