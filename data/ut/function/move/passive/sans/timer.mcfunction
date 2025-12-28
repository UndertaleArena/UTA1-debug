#By Nebulirion

execute if score @s passive_timer matches 0 if entity @s[tag=passive_sans_cd] run function ut:move/passive/sans/give
scoreboard players remove @s[tag=passive_sans_cd] passive_timer 1