#By Nebulirion

scoreboard players set @e[tag=arena_as,tag=arena_spawn,tag=!arena_spawning,scores={maplock=1}] distance 0
scoreboard players operation -this tid = @s tid
execute as @e[tag=arena_as,tag=arena_spawn,tag=!arena_spawning,scores={maplock=1}] at @s run function ut:system/respawn/random/calc_distance
##
scoreboard players set min distance 2147483647
scoreboard players operation min distance < @e[tag=arena_as,tag=arena_spawn,tag=!arena_spawning,scores={maplock=1}] distance 
execute as @e[tag=arena_as,tag=arena_spawn,tag=!arena_spawning,scores={maplock=1}] if score @s distance = min distance run tag @s add respawn_allas
tag @e[tag=respawn_allas,limit=1,sort=random] add respawn_as
execute at @e[tag=respawn_as,limit=1,sort=random] positioned ~ ~30 ~ run function ut:move/respawn/cast
##
tag @e[tag=respawn_as] add arena_spawning
tag @e remove respawn_allas
tag @e remove respawn_as