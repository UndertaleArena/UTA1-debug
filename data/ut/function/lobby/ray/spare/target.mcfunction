#By Nebulirion

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 20

execute if entity @s[tag=frog_info] as @a[tag=ray_user] run function ut:lobby/frog/info/talk_egg

###WORK ON THIS
execute if entity @s[tag=mini_dummy] at @s run function ut:lobby/minis/dummy/move/dummy/sky/init