#By Nebulirion

function ut:choose/lobby

execute if score @s C matches 1 if score @s last_chr matches 1.. run function ut:choose/lobby_last
execute if score @s C matches 2 run function ut:choose/lobby_fav