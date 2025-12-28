#By Nebulirion

execute align yxz positioned ~0.5 ~ ~0.5 run function ut:move/dig/ray_stop

scoreboard players set @s ray_distance 8
execute if entity @s[tag=dig_ray_fail] positioned ^ ^ ^-.5 align yxz positioned ~0.5 ~ ~0.5 run function ut:move/dig/yray_loop
scoreboard players set @s ray_distance 0