###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###EXTRA
playsound minecraft:entity.firework_rocket.shoot player @a ~ ~ ~ 0.4 0.8
###SUMMON ENTITY
execute positioned ^0.0 ^0.0 ^0.0 run function ut:move/rot/18
data merge entity @e[tag=summon,limit=1] {Tags:[mtt_bullet,killonhit,blockable,reflectable,cutable,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",count:1b}],CustomName:'{"translate":"chr.mettaton.dtn2"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s prj_speed
scoreboard players operation #player damage = @s atk
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
scoreboard players add #aid aid 1
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/mtt_bullet/_sys/cast