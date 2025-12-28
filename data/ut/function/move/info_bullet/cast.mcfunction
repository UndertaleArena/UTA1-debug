###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
playsound minecraft:block.note_block.bit player @a ~ ~ ~ .6 1.98
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ .9 1.6
###SUMMON ENTITY
execute positioned ^-0.2 ^-0.2 ^0.4 positioned ~-0.0 ~-1.5 ~-0.0 run function ut:move/rot/36
data merge entity @e[tag=summon,limit=1] {Tags:[info_bullet,killonhit,blockable,reflectable,cutable,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,Pose:{Head:[0f,0.001f,0f]},ArmorItems:[{},{},{},{id:"minecraft:pink_dye",count:1b}],CustomName:'{"translate":"chr.alphys.mpn"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/info_bullet/_sys/cast