#By Nebulirion


scoreboard players operation @s mpextra += @s mpregen
execute if score @s mpextra matches 100.. run function ut:player/mp/regenerate_loop
function ut:player/mp/change