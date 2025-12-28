#By Nebulirion

fill ~ ~ ~0.01 ~-1 ~1 ~-0.01 glass keep
fill ~ ~ ~-1.01 ~-1 ~1 ~-2 air replace minecraft:glass
fill ~ ~ ~1.01 ~-1 ~1 ~2 air replace minecraft:glass

execute positioned ~-1 ~ ~-1 run tag @a[tag=playing,tag=!respawning,dx=1,dz=1,dy=1] add rock_collision
execute as @a[tag=rock_collision] facing entity @s feet positioned as @s run tp @s ^ ^ ^0.1
tag @a remove rock_collision

execute store result score #zposog store run data get entity @s Pos[2] 100

scoreboard players set #zpos store 127200
scoreboard players set #zposadd store 500
scoreboard players operation #zposadd store *= @e[tag=arena_point_a,scores={maplock=1}] gamescore
scoreboard players operation #zposadd store /= -GoalA gamescore
scoreboard players operation #zpos store -= #zposadd store

execute store result entity @s Pos[2] double 0.01 run scoreboard players get #zpos store

execute unless score #zpos store = #zposog store run particle block{block_state:andesite} ~ ~.1 ~ .5 0 .5 .35 8 normal @a[scores={Q=2..}]

execute if score #zpos store < #zposog store run tp @e[type=boat,tag=hitboatF,limit=1,sort=nearest] ~ ~0.59 ~0.3125
execute if score #zpos store > #zposog store run tp @e[type=boat,tag=hitboatF,limit=1,sort=nearest] ~ ~0.59 ~-.3125
execute if score #zpos store = #zposog store run tp @e[type=boat,tag=hitboatF,limit=1,sort=nearest] ~ ~0.59 ~
