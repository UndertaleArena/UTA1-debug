#By Nebulirion

#ell Nebulirion !Respawn Error! 404 soul not found!
#ell @s !Respawn Error! 404 soul not found, Please report to creator!
scoreboard players set @e[tag=arena_as,tag=arena_spawn,scores={maplock=1}] distance 0
scoreboard players operation -this tid = @s tid
execute as @e[tag=arena_as,tag=arena_spawn,scores={maplock=1}] at @s run function ut:system/respawn/random/calc_distance

scoreboard players set max distance 0
scoreboard players operation max distance > @e[tag=arena_as,tag=arena_spawn,scores={maplock=1}] distance 
execute as @e[tag=arena_as,tag=arena_spawn,scores={maplock=1}] if score @s distance = max distance run tag @s add respawn_as
execute at @e[tag=respawn_as,limit=1,sort=random] run function ut:system/respawn/summon_respawn_loc
tag @e remove respawn_as