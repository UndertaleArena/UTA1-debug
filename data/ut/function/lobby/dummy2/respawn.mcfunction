#By Nebulirion

item replace entity @s armor.head with minecraft:bowl
scoreboard players add @s life 3
#tp @s[tag=!moving] ~ ~5 ~
execute at @s run particle minecraft:cloud ~ ~0.75 ~ 0.4 0.4 0.4 0.08 20
tag @s add active