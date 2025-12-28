#By Nebulirion

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 0

effect give @s glowing 1 0 true

execute if entity @s[tag=ray_team] run function ut:lobby/soul/select
execute if entity @s[tag=ray_flowey] run function ut:lobby/flowey/select
execute if entity @s[tag=ray_setting] run function ut:lobby/setting/select
execute if entity @s[tag=ray_menu] run function ut:lobby/menu/select
execute if entity @s[tag=ray_choose] run function ut:lobby/choose/select
execute if entity @s[tag=ray_tut] run function ut:lobby/tutorial/select
#execute if entity @s[tag=ray_dummy] run function ut:lobby/dummy/select
#execute if entity @s[tag=ray_dummy2] run function ut:lobby/dummy2/select
execute if entity @s[tag=ray_shoot_dummy] run function ut:lobby/minis/dummy/move/dummy/select
execute if entity @s[tag=ray_mini] run function ut:lobby/minis/select

execute if entity @s[tag=ray_frog] run function ut:lobby/frog/select

execute if entity @s[type=player] at @s as @a[tag=ray_user] run w @p hi/

scoreboard players set @a[tag=ray_user,limit=1,scores={unloadtime=0}] unloadtime 20