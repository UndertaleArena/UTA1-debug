###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 1.7 1.3
###SUMMON ENTITY
execute positioned ^0.0 ^0.8 ^0.7 positioned ~-0.0 ~-1.5 ~-0.0 run function ut:move/rot/18
data merge entity @e[tag=summon,limit=1] {Tags:[dummy_bullet_mech,blockable,reflectable,cutable,prj2,move,summon,selfhiter],NoGravity:1b,Invisible:1b,Marker:1b,Pose:{Head:[0f,0.001f,0f]},ArmorItems:[{},{},{},{id:"minecraft:apple",count:1b}],CustomName:'{"translate":"chr.maddummy.dtn3"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/dummy_bullet_mech/_sys/cast