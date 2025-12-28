#By Nebulirion

effect clear @s levitation

execute if entity @s[tag=fall_slimed] run function ut:move/king/landing
tag @s add fall_slimed