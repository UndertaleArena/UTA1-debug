#By Nebulirion

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 10

execute if entity @s[tag=mng_dummy_spear] as @a[tag=ray_user] run function ut:lobby/minis/dummy/move/spear/select
execute if entity @s[tag=mng_dummy_bone] as @a[tag=ray_user] run function ut:lobby/minis/dummy/move/bone/select