#By Nebulirion

scoreboard players reset @s flirt_timer
scoreboard players reset @s sid

execute unless score @s ml < @s mlmax run effect clear @s minecraft:weakness
scoreboard players set @s unloadtime 5

scoreboard players remove @s[tag=effect_flirt] move_loop 1
tag @s remove effect_flirt