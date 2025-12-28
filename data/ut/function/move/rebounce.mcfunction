#By Nebulirion

tp @s ~ ~ ~ ~180 ~

#execute store result score @s rotx run data get entity @s Rotation[0] 10000
execute store result score @s roty run data get entity @s Rotation[1] 10000

#scoreboard players operation @s rotx += 180 rotx
scoreboard players operation @s roty *= minus1 roty

#execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get @s rotx
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get @s roty

scoreboard players set @s tid 0
#scoreboard players remove @s life 20