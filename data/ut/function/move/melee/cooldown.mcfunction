#By Nebulirion

scoreboard players operation @s ml *= -new mlmax
scoreboard players operation @s ml /= @s mlmax
scoreboard players operation @s mlmax = -new mlmax
scoreboard players operation @s ml -= @s mlmax
execute if score @s ml < @s mlmax run effect give @s minecraft:weakness infinite 64 true
function ut:player/melee/change