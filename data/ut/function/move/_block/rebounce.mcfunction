#By Nebulirion

scoreboard players set #killprj speed 0
scoreboard players set #temp speed 0

playsound minecraft:block.slime_block.fall player @a
execute rotated ~180 ~ run tp @s ^ ^ ^1 ~ ~

#execute store result score @s roty run data get entity @s Rotation[1] 10000
#
#scoreboard players operation @s roty *= -1 const
#
#execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get @s roty

scoreboard players set @s tid 0
#scoreboard players reset @s life 20