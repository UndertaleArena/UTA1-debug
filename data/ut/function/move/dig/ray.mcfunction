#By Nebulirion

tag @s add ray_user
scoreboard players set @s ray_distance 40
execute store result score #rot ray_distance run data get entity @s Rotation[1]
execute positioned ^ ^ ^ run function ut:move/dig/ray_loop
tag @s remove ray_user

tag @s[tag=!dig_rc] remove dig_ray_fail