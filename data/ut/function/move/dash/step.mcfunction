#By Nebulirion

execute as @a[tag=playing,tag=!untargetable,tag=!dash_target,distance=..2.5] unless score @s tid = #atker tid positioned ~ ~-0.2 ~ run function ut:move/dash/hitbox_damage

###Reflect
execute as @e[tag=reflectable,distance=..2.5] unless score @s tid = #atker tid run function ut:move/dash/hitbox_reflect

tag @s remove dash_up

execute unless block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans if block ~ ~2 ~ #ut:ray_trans run tag @s add dash_up
execute unless block ^.3 ^1 ^ #ut:ray_trans run function ut:move/dash/stop
execute unless block ^-.3 ^1 ^ #ut:ray_trans run function ut:move/dash/stop
execute unless block ~ ~2 ~ #ut:ray_trans unless block ~ ~ ~ #ut:ray_trans run function ut:move/dash/stop

scoreboard players remove @s[tag=!dash_up] plt2 1
execute if score @s plt2 matches 0 run function ut:move/dash/end
execute if score @s plt2 matches 1.. if entity @s[tag=dash_up] positioned ~ ~1 ~ align y run function ut:move/dash/step
execute if score @s plt2 matches 1.. unless entity @s[tag=dash_up] positioned ^ ^ ^.25 run function ut:move/dash/step

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.3 1.2
particle dust{color:[1,0,0],scale:1.2} ~ ~1 ~ 0.3 0.45 0.3 0 5 force @a[scores={Q=1..}]
#