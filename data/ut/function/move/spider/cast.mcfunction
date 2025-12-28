###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###SUMMON ENTITY
execute positioned ^0.0 ^-0.2 ^0.5 run function ut:move/rot/18
data merge entity @e[tag=summon,limit=1] {Tags:[spider,blockable,reflectable,cutable,stickonhit,inair,motion_prj,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,Pose:{Head:[15f,0f,0f]},Small:1b,Silent:1b,NoAI:1b,Team:"nocol",ArmorItems:[{},{},{},{id:"minecraft:spider_eye",count:1b}],CustomName:'{"translate":"chr.muffet.mpn"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/spider/_sys/cast