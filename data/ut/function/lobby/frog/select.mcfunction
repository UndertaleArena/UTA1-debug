#By Nebulirion

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 10

playsound minecraft:block.note_block.pling player @a[tag=ray_user] ~ ~ ~ 0.75 2 0.75 

execute if entity @s[tag=player_settings] as @a[tag=ray_user] run function ut:lobby/setting/player/main

execute if entity @s[tag=frog_filter] as @a[tag=ray_user] run function ut:lobby/frog/filter/talk
execute if entity @s[tag=frog_main] as @a[tag=ray_user] run function ut:lobby/frog/main/talk
execute if entity @s[tag=frog_info] as @a[tag=ray_user] run function ut:lobby/frog/info/talk