#By Nebulirion

tag @e[type=armor_stand,tag=inject_target,limit=1] add respawn_flag

scoreboard players operation #old aid = #aid aid

playsound minecraft:item.honey_bottle.drink player @a ~ ~ ~ 1 0.5
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 1.6

execute rotated ~ 0 positioned ^ ^ ^.3 run summon minecraft:armor_stand ~.2 ~2.4 ~.3 {Tags:[summon,move,syringe,syringe_dust,spc],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_model_data:1}}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.alphys.dtn"}'}

scoreboard players set #this damage 0
scoreboard players set #this lifetime 40
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players operation #aid aid = @s aid

execute as @e[type=armor_stand,tag=respawn_soul] if score @s pid = #this pid run function ut:void
execute as @a if score @s pid = #this pid run function ut:move/injection/use_suc_revive_pre_p

execute at @e[tag=summon,limit=1] positioned ~ ~.6 ~ run particle cloud ~ ~ ~ 0.12 0.3 0.12 0.01 10 normal @a[scores={Q=2..}]
execute as @e[tag=summon,limit=1] at @s rotated 0 0 run function ut:move/cast

scoreboard players operation #aid aid = #old aid