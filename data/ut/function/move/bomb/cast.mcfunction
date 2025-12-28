###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 1 0.75
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 0.6 1.6
###SUMMON ENTITY
summon minecraft:armor_stand ^0.0 ^-0.2 ^0.0 {Tags:[bomb,blockable,reflectable,cutable,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:gunpowder",count:1b}],CustomName:'{"translate":"chr.mettaton.chn"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/bomb/_sys/cast