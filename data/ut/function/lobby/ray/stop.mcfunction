#By Nebulirion

execute positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=active,tag=ray_target,tag=!ray_user] positioned ^ ^ ^-0.5 run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~1 ~ 0 0 0 1 5 force @s

execute positioned ~ ~-1 ~ as @e[distance=..1,tag=active,tag=ray_target,tag=!ray_user,sort=nearest,limit=1] run function ut:lobby/ray/stopattarget

execute if entity @s[tag=ray_rc] positioned ~ ~-1 ~ as @e[distance=..1,tag=ray_target,tag=active,tag=!ray_user,sort=nearest,limit=1] run function ut:lobby/ray/target
