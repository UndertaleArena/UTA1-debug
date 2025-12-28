###Generated from Nebulagen made By Nebulirion
#06/21/2021, 20:19:29

###USER SCORE
function ut:move/fire_bullet
###SUMMON ENTITY
execute positioned ^0.0 ^0.5 ^0.8 positioned ~-0.0 ~-1.5 ~-0.0 run function ut:move/rot/18
data merge entity @e[tag=summon,limit=1] {Tags:[dummy_friend,turret,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,Pose:{Head:[0f,0.001f,0f]},ArmorItems:[{},{},{},{id:"minecraft:chorus_fruit",count:1b}],CustomName:'{"translate":"chr.maddummy.mpn1"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/dummy_friend/turrent_cast2