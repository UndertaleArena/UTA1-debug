###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.8
###SUMMON ENTITY
execute positioned ^-0.5 ^-0.3 ^0.5 positioned ~-0.0 ~-0.93 ~-0.0 run function ut:move/rot/12husk
data merge entity @e[tag=summon,limit=1] {Tags:[spear,blockable,reflectable,cutable,stickonhit,motion_prj,prj2,move,summon],NoGravity:1b,Silent:1b,NoAI:1b,Team:"nocol",IsBaby:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1b}]}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet positioned ^0.5 ^-0.0 ^-0.0 run function ut:move/spear/_sys/cast