#By Nebulirion

execute store result score #activeSpawnCount store if entity @e[tag=active_spawn,tag=empty_spawn]
execute if score #activeSpawnCount store matches 3.. run tag @e[tag=empty_spawn,tag=active_spawn,limit=1,sort=nearest] remove active_spawn