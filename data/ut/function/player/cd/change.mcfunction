#By Nebulirion

execute if score @s cd > @s cdmax run scoreboard players operation @s cd = @s cdmax
scoreboard players operation @s cddis = @s cd
scoreboard players operation @s cddis *= #rate cddis
scoreboard players operation @s cddis /= @s cdmax