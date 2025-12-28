#By Nebulirion

scoreboard players reset @s stun_timer

execute unless score @s ml < @s mlmax run effect clear @s minecraft:weakness
effect clear @s minecraft:slowness
scoreboard players set @s unloadtime 0

scoreboard players remove @s[tag=effect_stun] move_loop 1
tag @s remove effect_stun