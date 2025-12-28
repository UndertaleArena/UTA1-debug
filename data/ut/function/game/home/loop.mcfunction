#By Nebulirion

tag @a[tag=playerathome] add wasathome
tag @a remove playerathome

execute as @a[tag=playing,tag=!respawning] at @s if block ~ 0 ~ #ut:home run function ut:game/home/player

execute as @a[tag=wasathome,tag=!playerathome] run function ut:game/home/player_leave
tag @a remove wasathome

scoreboard players set #home timer 0