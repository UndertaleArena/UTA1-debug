#By Nebulirion

summon minecraft:armor_stand ^ ^ ^ {Tags:[sy_bullet,pellet,summon,cmove,credit_as],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.flowey.mpn"}'}

scoreboard players set @s lifetime 200
tp @e[tag=summon,limit=1,type=armor_stand] ~ ~ ~ ~ ~-10
tag @e[tag=summon,limit=1,type=armor_stand] remove summon