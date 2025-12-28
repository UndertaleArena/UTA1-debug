###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ .4 1.6
###SUMMON ENTITY
summon minecraft:armor_stand ^0.0 ^-0.2 ^0.0 {Tags:[shock_bullet,killonhit,blockable,reflectable,cutable,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,Pose:{Head:[0.0001f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:dried_kelp",count:1b}],CustomName:'{"translate":"chr.alphys.chn"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/shock_bullet/_sys/cast