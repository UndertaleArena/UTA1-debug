#By Nebulirion

playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 1.6

execute positioned ^ ^-.2 ^ run function ut:move/rot/18
data merge entity @e[tag=summon,limit=1] {Tags:[summon,move,syringe,syringe_prj,spc],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",count:1b,components:{"minecraft:custom_model_data":99}}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.alphys.dtn"}'}

scoreboard players set #this damage 0
scoreboard players set #this lifetime 60
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players operation @e[tag=summon,limit=1] sid = @a[tag=inject_target,limit=1] pid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast