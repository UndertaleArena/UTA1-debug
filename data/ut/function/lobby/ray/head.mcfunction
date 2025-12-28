#By Nebulirion

particle dust{color:[0.0,1.0,0.0],scale:1.0} ~ ~-.25 ~ 0.3 0.3 0.3 1 2 force @s

execute if entity @s[tag=ray_rc] if score @s ray_distance matches 1.. if block ~ 122 ~ obsidian run function ut:lobby/tutorial/s/select
execute if entity @s[tag=ray_rc] if score @s ray_distance matches 1.. if block ~ ~7 ~ smooth_stone_slab run function ut:lobby/credit/h/select_k
execute if entity @s[tag=ray_rc] if score @s ray_distance matches 1.. if block ~ ~-2 ~ melon run function ut:lobby/credit/h/select_f
execute if entity @s[tag=ray_rc] if score @s ray_distance matches 1.. if block ~ ~-2 ~ pumpkin run function ut:lobby/frog/fourth/talk
execute if entity @s[tag=ray_rc] if score @s ray_distance matches 1.. run function ut:lobby/credit/h/select

scoreboard players set @s ray_distance -625