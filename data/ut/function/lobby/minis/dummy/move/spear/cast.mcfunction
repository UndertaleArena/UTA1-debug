###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###USER SCORE
function ut:move/fire_bullet
###EXTRA
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.8
###SUMMON ENTITY
execute positioned ^-0.5 ^-0.3 ^0.5 positioned ~-0.0 ~-0.93 ~-0.0 run function ut:move/rot/12husk
data merge entity @e[tag=summon,limit=1] {Tags:[mngd_as,spear,killonhit,mini_move,summon],NoGravity:1b,Silent:1b,NoAI:1b,Team:"nocol",IsBaby:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1b}]}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet positioned ^0.5 ^-0.0 ^-0.0 run function ut:lobby/minis/dummy/move/spear/_sys/cast