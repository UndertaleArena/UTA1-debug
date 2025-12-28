#By Nebulirion

scoreboard players reset @s nomercy_timer

execute store result score -clearcount store run clear @s #ut:spare[custom_data~{spare:1b}] 1
execute if score -clearcount store matches 1.. run function ut:choose/spare

scoreboard players remove @s[tag=effect_nomercy] move_loop 1
tag @s remove effect_nomercy

execute if entity @s[tag=passive_asgore] run function ut:move/nomercy/give