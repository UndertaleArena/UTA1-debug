#By Nebulirion

scoreboard players add @s last_use 1
scoreboard players add @s last_damaged 1
scoreboard players add @s last_damage 1
execute if score @s last_use >= #out last_infight if score @s last_damaged >= #out last_infight run function ut:player/infight/out
execute if score @s last_damaged >= #clear kid run scoreboard players reset @s kid