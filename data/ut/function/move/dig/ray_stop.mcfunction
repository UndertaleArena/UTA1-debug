#By Nebulirion

tag @s add dig_ray_fail

execute unless block ~ ~ ~ #ut:trans if block ~ ~1 ~ #ut:ray_trans if block ~ ~2 ~ #ut:ray_trans run tag @s remove dig_ray_fail

execute if block ~ ~ ~ end_gateway run tag @s add dig_ray_fail
execute if block ~ ~1 ~ light[waterlogged=true,level=0] run tag @s add dig_ray_fail

execute as @e[tag=arena_low,limit=1,scores={maplock=1}] run function ut:move/dig/ray_stop_void_check

execute unless entity @s[tag=dig_rc] unless entity @s[tag=dig_ray_fail] positioned ~ ~1 ~ run particle dust{color:[0.1,0.8,0.1],scale:1} ~ ~1 ~ 0.1 0.4 0.1 1 4 force @s
execute unless entity @s[tag=dig_rc] unless entity @s[tag=dig_ray_fail] positioned ~ ~1 ~ run particle dust{color:[0.0,0.5,0.0],scale:1} ~ ~ ~ 0.2 0 0.2 1 4 force @s

execute if entity @s[tag=dig_rc] unless entity @s[tag=dig_ray_fail] positioned ~ ~ ~ run function ut:move/dig/ray_stop_rc