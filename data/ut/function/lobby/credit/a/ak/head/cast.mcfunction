#By Nebulirion

playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 0.8 0.8

summon minecraft:armor_stand ~ ~ ~ {Tags:[ak_bullet,credit_as,cmove,ak_head,summon],NoGravity:1b,Invisible:1b,Marker:0b,Invulnerable:1b,Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.ak.chn3"}',Rotation:[99f],DisabledSlots:3620671}

data modify entity @e[tag=summon,limit=1] ArmorItems[3] set from entity @s ArmorItems[3]
data modify entity @e[tag=summon,limit=1] Small set from entity @s Small
data remove entity @s ArmorItems[3]

scoreboard players set @e[tag=summon,limit=1] lifetime 340
tag @e[tag=summon,limit=1] remove summon