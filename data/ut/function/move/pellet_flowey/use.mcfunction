#By Nebulirion

execute if entity @s[tag=!pellets_user] run function ut:move/pellet_flowey/use_prep
execute if entity @s[tag=pellets_user] unless score @s unloadtime matches 1.. run function ut:move/pellet_flowey/use_shoot