#By Nebulirion

###Movement
scoreboard players reset @s shift

#Void
execute if score @s y_pos < -LowPos y_pos at @s run tp @s @e[tag=arena_mid,limit=1,scores={maplock=1}]