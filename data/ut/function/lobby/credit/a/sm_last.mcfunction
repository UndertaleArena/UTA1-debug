#By Nebulirion

tp @s ~ ~ ~ ~ 90
tag @s remove cname
tag @s remove launched
tag @s add clast

scoreboard players set @s life 0
data merge entity @s {CustomNameVisible:1b}