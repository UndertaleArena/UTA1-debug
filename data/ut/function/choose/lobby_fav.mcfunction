#By Nebulirion

function ut:stats/favourite/calculate

execute if score @s st_favchr matches 1.. run scoreboard players operation @s chr = @s st_favchr
execute if score @s st_favchr matches 1.. run function ut:choose/storage