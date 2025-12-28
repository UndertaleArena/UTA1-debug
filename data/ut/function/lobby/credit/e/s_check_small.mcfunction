#hi

execute at @e[tag=credit_play,limit=1] run tp @s ~ ~-0.01 ~

data merge entity @s {Marker:1b}
item replace entity @s armor.head with air

tag @s add launched