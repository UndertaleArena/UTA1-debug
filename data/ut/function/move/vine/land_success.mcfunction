#By Nebulirion

scoreboard players set @s life 0
scoreboard players set @s lifetime 125

execute positioned ~ ~.3 ~ align y run tp @s ~ ~0.1 ~ ~ 0

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:[summon,move,vine_center,landed,prj,prj_sp,no_direction],NoGravity:1b,Invulnerable:1b,Silent:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:air",count:1b}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.flowey.dtn"}'}

#####
scoreboard players set #this lifetime 125
scoreboard players operation #this damage = @s damage
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast

tag @s remove vine
tag @s remove falling
function ut:void