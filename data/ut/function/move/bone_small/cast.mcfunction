###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
particle minecraft:dust{color:[0.0,0.8,0.8],scale:2.0} ^ ^-0.1 ^ 0 0 0 0 0 normal @a[scores={Q=2..}]
###SUMMON ENTITY
summon minecraft:armor_stand ^0.0 ^0.0 ^0.0 {Tags:[bone_small,killonhit,blockable,reflectable,cutable,summon2,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:white_dye",count:1b}],CustomName:'{"translate":"chr.sans.mpn"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/bone_small/_sys/cast