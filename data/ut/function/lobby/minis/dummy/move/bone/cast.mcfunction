###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###EXTRA
playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 2 1
###SUMMON ENTITY
summon minecraft:armor_stand ^0.0 ^-0.4 ^0.3 {Tags:[mngd_as,bone,killonhit,mini_move,summon],NoGravity:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:bone",count:1b}],CustomName:'{"translate":"chr.papyrus.mpn"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s positioned ^ ^0.2 ^0.2 anchored feet run function ut:lobby/minis/dummy/move/bone/_sys/cast