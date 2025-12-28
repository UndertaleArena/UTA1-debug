#By Nebulirion

#
function ut:player/infight/damage
execute if score -Enabled stat matches 1 run scoreboard players operation @s st_cdmg += #damage damage
#