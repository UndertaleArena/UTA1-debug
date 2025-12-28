#By Nebulirion

execute store result score @s x_pos run data get entity @s Pos[0] 10
execute store result score @s y_pos run data get entity @s Pos[1] 10
execute store result score @s z_pos run data get entity @s Pos[2] 10
scoreboard players add @s y_pos 15

execute at @s positioned ~ ~1.5 ~ run tp @e[type=marker,tag=gb_target,limit=1] ^ ^ ^8

execute store result score @s x_tar run data get entity @e[type=marker,tag=gb_target,limit=1] Pos[0] 10
execute store result score @s y_tar run data get entity @e[type=marker,tag=gb_target,limit=1] Pos[1] 10
execute store result score @s z_tar run data get entity @e[type=marker,tag=gb_target,limit=1] Pos[2] 10

scoreboard players operation @s x_tar -= @s x_pos
scoreboard players operation @s y_tar -= @s y_pos
scoreboard players operation @s z_tar -= @s z_pos

scoreboard players operation #sq x_tar = @s x_tar
scoreboard players operation #sq x_tar *= #sq x_tar
scoreboard players operation #sq y_tar = @s y_tar
scoreboard players operation #sq y_tar *= #sq y_tar
scoreboard players operation #sq z_tar = @s z_tar
scoreboard players operation #sq z_tar *= #sq z_tar

scoreboard players operation @s store = #sq x_tar
scoreboard players operation @s store += #sq y_tar
scoreboard players operation @s store += #sq z_tar