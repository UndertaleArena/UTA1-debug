#By Nebulirion

execute if score @s unloadtime matches 1.. run function ut:player/rc_unloading
execute unless score @s unloadtime matches 1.. run function ut:player/rc
scoreboard players reset @s rc