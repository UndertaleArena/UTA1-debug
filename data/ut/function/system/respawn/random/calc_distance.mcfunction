
execute as @a[tag=playing,tag=!respawning] unless score @s tid = -this tid run tag @s add target
tag @p[tag=target] add nearest
tag @a remove target

execute store result score spawnx store run data get entity @s Pos[0]
execute store result score spawny store run data get entity @s Pos[1]
execute store result score spawnz store run data get entity @s Pos[2]

execute store result score px store run data get entity @a[tag=nearest,limit=1] Pos[0]
execute store result score py store run data get entity @a[tag=nearest,limit=1] Pos[1]
execute store result score pz store run data get entity @a[tag=nearest,limit=1] Pos[2]

scoreboard players operation px store -= spawnx store
scoreboard players operation py store -= spawny store
scoreboard players operation pz store -= spawnz store

scoreboard players operation px store *= px store
scoreboard players operation py store *= py store
scoreboard players operation pz store *= pz store

scoreboard players operation @s distance = px store
scoreboard players operation @s distance += py store
scoreboard players operation @s distance += pz store
##
scoreboard players remove @s distance 2304
execute if score @s distance matches ..-1 run scoreboard players operation @s distance *= -1 const
##
tag @a remove nearest
