#By Nebulirion

execute if entity @s[tag=attack_buffed] run function ut:move/fireball_buffed/cast
execute if entity @s[tag=!attack_buffed] run function ut:move/fireball/cast