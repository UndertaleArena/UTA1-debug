###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
playsound minecraft:entity.generic.small_fall player @a ~ ~ ~ 0.5 2
###SUMMON ENTITY
execute positioned ^0.0 ^0.0 ^0.0 positioned ~-0.0 ~-1.5 ~-0.0 run function ut:move/rot/12
data merge entity @e[tag=summon,limit=1] {Tags:[shoot,killonhit,blockable,reflectable,cutable,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,Pose:{Head:[0f,0.001f,0f]},Fire:32676,ArmorItems:[{},{},{},{id:"minecraft:bone_meal",count:1b,components:{custom_model_data:11}}],CustomName:'{"text":"\\u0053\\u0059\\u004d\\u0042\\u004f\\u004c","font":"minecraft:wingdings"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/shoot/_sys/cast