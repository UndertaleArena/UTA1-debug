#By Nebulirion


scoreboard players operation @s cdextra += @s cdregen
execute if score @s cdextra matches 100.. run function ut:player/cd/regenerate_loop
function ut:player/cd/change