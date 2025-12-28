#By Nebulirion

#
execute if score @s hp > @s hpmax run scoreboard players operation @s hp = @s hpmax
function ut:player/hp/update