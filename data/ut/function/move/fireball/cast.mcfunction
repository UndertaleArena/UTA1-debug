###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
execute store result score #player rot run data get entity @s Rotation[0] 100
scoreboard players operation #player plt1c = @s plt1c
scoreboard players add #player plt1c 1
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.8 1.6
###SUMMON ENTITY
summon minecraft:armor_stand ^0.0 ^-0.2 ^0.0 {Tags:[fireball,killonhit,blockable,reflectable,cutable,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_cream",count:1b}],CustomName:'{"translate":"chr.toriel.mpn"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/fireball/_sys/cast