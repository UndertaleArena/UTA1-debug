#By Nebulirion

particle minecraft:explosion ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a
playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~ ~ 1.6 1.4

scoreboard players set @s life 100
item replace entity @s armor.head with air
#tp @s[tag=!moving] ~ ~-5 ~
tag @s remove active