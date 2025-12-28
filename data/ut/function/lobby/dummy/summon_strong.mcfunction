#By Nebulirion

particle minecraft:cloud ~ ~0.5 ~ 0.25 0.25 0.25 0.1 25
summon minecraft:armor_stand ~ ~ ~ {Marker:0b,Tags:[lobby_as,active,ray_target,ray_dummy,dummy,summon],Invisible:0b,Invulnerable:1b,NoGravity:1b,DisabledSlots:3620671}
item replace entity @e[tag=summon,limit=1,type=armor_stand] armor.head with minecraft:bowl
execute as @a[tag=tut_p] run scoreboard players add @e[tag=summon,limit=1,type=armor_stand] life 10
execute facing entity @e[tag=ray_flowey,limit=1] eyes run tp @e[tag=summon,limit=1,type=armor_stand] ~ ~ ~ ~180 ~
tag @e[tag=summon,limit=1,type=armor_stand] remove summon