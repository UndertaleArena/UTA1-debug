###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###USER SCORE
function ut:move/fire_bullet
###SUMMON ENTITY
summon minecraft:armor_stand ^0.0 ^0.0 ^0.0 {Tags:[firehand_ball,killonhit,blockable,reflectable,cutable,prj2,move,summon],NoGravity:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_cream",count:1b,components:{custom_model_data:1}}],CustomName:'{"translate":"chr.asgore.mpn2"}'}
###SETUP ENTITY
scoreboard players operation #player prj_speed = @s speed
scoreboard players operation #player prj_speed *= 40 const
scoreboard players operation #player prj_speed /= 5 const
scoreboard players operation #player damage = @s damage
scoreboard players operation #player damage *= 2 const
scoreboard players operation #player damage /= 3 const
scoreboard players operation #old aid = #aid aid
scoreboard players operation #player aid = @s aid
scoreboard players operation #player pid = @s pid
scoreboard players operation #player tid = @s tid
execute as @e[tag=summon,limit=1] positioned as @s anchored feet run function ut:move/firehand_ball/_sys/cast