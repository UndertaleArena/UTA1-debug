#By Nebulirion

#
execute if entity @s[tag=!no_mc_dmg] run function ut:player/damage_resisted_take
scoreboard players reset @s damage_resisted