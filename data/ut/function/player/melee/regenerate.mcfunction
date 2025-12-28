#By Nebulirion


execute unless score @s mpmax matches 0 run scoreboard players set @s mlextra 100
execute if score @s mpmax matches 0 run scoreboard players operation @s mlextra += @s mpregen
execute if score @s mlextra matches 100.. run function ut:player/melee/regenerate_loop
function ut:player/melee/change