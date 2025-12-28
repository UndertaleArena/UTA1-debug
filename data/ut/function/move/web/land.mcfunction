#By Nebulirion

playsound minecraft:entity.painting.place player @a ~ ~ ~ 1.5 0.8

execute align y run tp @s ~ ~0.05 ~ ~ 0
execute align y if block ~ ~-1 ~ #ut:ray_trans unless block ~ ~1 ~ #ut:ray_trans run tp @s ~ ~0.90 ~ ~ 0
execute rotated ~ 0 if block ^ ^ ^1 #ut:trans unless block ^ ^1 ^1 #ut:trans align y if block ~ ~-1 ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans run tp @s ~ ~0.90 ~ ~ 0
execute rotated ~ 0 unless block ^ ^ ^1 #ut:trans align y if block ~ ~-1 ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans run tp @s ~ ~0.55 ~ ~ 0

execute at @s run function ut:move/rot/12
data merge entity @e[tag=summon,limit=1] {Tags:[summon,move,web,web_land,prj,prj_sp],NoGravity:1b,Invulnerable:1b,Silent:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:purple_dye",count:1b}],Pose:{Head:[0f,0f,0f]},CustomName:'"Spider Web"'}

#####
scoreboard players set #this damage 0
scoreboard players set #this lifetime 60
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast

function ut:void