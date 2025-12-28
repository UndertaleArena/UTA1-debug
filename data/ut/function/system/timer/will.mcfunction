#By Nebulirion

scoreboard players reset #willTime timer
execute as @a[tag=playing,tag=!respawning,tag=!undying] if score @s last_damage matches 600.. run function ut:player/will/decrease