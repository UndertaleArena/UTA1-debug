#By Nebulirion

execute if score @s jump matches 1.. run tp @s @s
execute if entity @s[nbt={OnGround:0b,HurtTime:10s}] run tp @s @s
scoreboard players reset @s jump