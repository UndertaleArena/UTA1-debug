###Generated from Nebulagen made By Nebulirion
#03/23/2022, 03:19:16

scoreboard players operation @s speed *= #player prj_speed
scoreboard players operation @s speed /= 100 const
execute if score @s speed matches 64.. run scoreboard players set @s speed 63