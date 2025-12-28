###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOTION
tp @s ^0.0 ^0.0 ^1.0
execute store result score @s x_pos run data get entity @s Pos[0] 1000
execute store result score @s y_pos run data get entity @s Pos[1] 1000
execute store result score @s z_pos run data get entity @s Pos[2] 1000
tp @s ^ ^ ^
execute store result score neg x_pos run data get entity @s Pos[0] 1000
execute store result score neg y_pos run data get entity @s Pos[1] 1000
execute store result score neg z_pos run data get entity @s Pos[2] 1000
scoreboard players operation @s x_pos -= neg x_pos
scoreboard players operation @s y_pos -= neg y_pos
scoreboard players operation @s z_pos -= neg z_pos