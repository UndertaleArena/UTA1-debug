#By Nebulirion

execute at @s if block ~ ~1.2 ~ #ut:trans run function ut:move/dust_pile/fall
execute at @s if block ~ ~1.2 ~ #ut:trans run function ut:move/dust_pile/fall
execute at @s if block ~ ~1.2 ~ #ut:trans run function ut:move/dust_pile/fall

##VAPORCHECK##
execute if entity @s[tag=!respawn_flag] run function ut:move/dust_pile/vapor_check

scoreboard players add @s life 1
execute if score @s life > @s lifetime run kill @s
