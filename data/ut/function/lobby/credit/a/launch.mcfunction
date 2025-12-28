#By Nebulirion

playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1
tag @s remove stationed
tag @s remove cnext
tag @s remove cnext2
tag @s remove cname_even
tag @s remove cname_odd
tag @s add launched

data merge entity @s {CustomNameVisible:1b}