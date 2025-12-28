#By Nebulirion

scoreboard players operation o y_pos = @s y_pos
execute as @e[tag=mngp_ypos] if score @s life = o y_pos run tag @s remove active

scoreboard players add o y_pos 2
execute as @e[tag=mngp_ypos] if score @s life = o y_pos run tag @s remove active

scoreboard players add o y_pos 1
execute as @e[tag=mngp_ypos] if score @s life = o y_pos run tag @s remove active