###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
particle end_rod ^ ^ ^-.7 0 0 0 0 0 force @a[scores={Q=2..}]
particle end_rod ^ ^ ^ 0 0 0 0 0 force @a[scores={Q=2..}]
particle end_rod ^ ^ ^0.7 0 0 0 0 0 force @a[scores={Q=2..}]
###SUMMON ENTITY
summon minecraft:armor_stand ^0.0 ^0.0 ^0.0 {Tags:[star_small,killonhit,blockable,reflectable,cutable,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:rabbit_hide",count:1b}],CustomName:'{"translate":"chr.asriel.chn2"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s speed
scoreboard players operation #player prj_speed *= 40 const
scoreboard players operation #player prj_speed /= 3 const
scoreboard players operation #player damage = @s damage
scoreboard players operation #player damage /= 2 const
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/star_small/_sys/cast