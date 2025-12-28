#By Nebulirion
#
execute if entity @s[tag=dt_shield] run function ut:player/hp/dt_shield
#
scoreboard players operation @s hp -= #true_damage damage
function ut:player/hp/lose
#