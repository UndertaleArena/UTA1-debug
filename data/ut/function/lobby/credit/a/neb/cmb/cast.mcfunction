#By Nebulirion

summon minecraft:armor_stand ^ ^ ^ {Tags:[neb_bullet,cmb,summon,cmove,credit_as,summon2],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",count:1b}],Pose:{Head:[0f,0f,0f]},Rotation:[90.0f,0.0f],CustomName:'{"translate":"chr.neb.mpn"}'}

scoreboard players set @s life 0
scoreboard players set @s lifetime 200
tp @e[tag=summon,limit=1,type=armor_stand] ~ ~ ~ ~ ~-10
tag @e[tag=summon,limit=1,type=armor_stand] remove summon