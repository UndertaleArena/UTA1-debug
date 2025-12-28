#By Nebulirion

execute at @s[tag=!need_admin] run particle dust{color:[0,1,0],scale:1.0} ~ ~0.8 ~ 0.4 0.4 0.4 1 2 force @a[tag=ray_user]
execute at @s[tag=need_admin] run particle dust{color:[0,1,0],scale:1.0} ~ ~0.8 ~ 0.4 0.4 0.4 1 2 force @a[tag=ray_user,tag=admin]
execute at @s[tag=need_admin] run particle dust{color:[1,0,0],scale:1.0} ~ ~0.8 ~ 0.4 0.4 0.4 1 2 force @a[tag=ray_user,tag=!admin]

execute if entity @s[tag=setting_start] run function ut:lobby/ray/start_title