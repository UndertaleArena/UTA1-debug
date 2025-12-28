#By Nebulirion

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 20

execute if entity @s[tag=need_admin] if entity @a[tag=ray_user,tag=!admin] run function ut:lobby/ray/target_fail
execute if entity @s[tag=need_admin] if entity @a[tag=ray_user,tag=admin] run function ut:lobby/ray/target_success
execute if entity @s[tag=!need_admin] run function ut:lobby/ray/target_success