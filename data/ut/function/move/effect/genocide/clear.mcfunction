#By Nebulirion

scoreboard players set -temp damage 34
scoreboard players operation -temp damage *= @s genocide_level
scoreboard players operation @s atk -= -temp damage

scoreboard players reset @s genocide_level
scoreboard players reset @s genocide_timer

#effect clear @s minecraft:strength

scoreboard players remove @s[tag=effect_genocide] move_loop 1
tag @s remove effect_genocide