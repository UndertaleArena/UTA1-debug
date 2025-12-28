#By Nebulirion

execute at @s[tag=!waitingbone] if block ~ ~ ~ #ut:trans run function ut:move/floor_bone/cast_bones
execute at @s[tag=!waitingbone] if score @s life matches 33.. run function ut:move/floor_bone/stop

scoreboard players reset @s life2