#By Nebulirion

execute if score @s rc matches 1.. unless score @s unloadtime matches 1.. run tag @s add ray_rc
tag @s add ray_user
tag @s remove mute_rayrc
tag @e[tag=ray_target,tag=active] add actived
execute if score admin_mode info matches 1 if entity @a[tag=admin] if entity @s[tag=!admin] run tag @e[tag=ray_target,tag=vip_only] add need_admin
execute if entity @s[tag=admin] run tag @e[tag=ray_target,tag=actived,tag=vip_only] remove need_admin
execute if entity @s[tag=spectator] run tag @e[tag=ray_target,tag=not_for_spc] remove active
scoreboard players set @s ray_distance 256
execute positioned ^ ^ ^0.5 run function ut:lobby/ray/loop
tag @e[tag=ray_target,tag=actived] add active
tag @e[tag=ray_target,tag=actived] remove actived
tag @e[tag=ray_target,tag=vip_only] remove need_admin

tag @s remove mute_rayrc
tag @s remove ray_user
tag @s remove ray_rc