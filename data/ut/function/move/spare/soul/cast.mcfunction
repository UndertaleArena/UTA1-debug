#By Nebulirion

summon minecraft:armor_stand ~ ~ ~ {Tags:[spared_soul,summon,move,spc],NoGravity:1b,NoBasePlate:1b,Invisible:1b,Marker:1b,equipment:{},CustomName:{"translate": "as.spare"}}

# Equipment copying
tag @s add ut.tmp.copy
execute as @e[limit=1,tag=summon,type=armor_stand] run function ut:move/spare/soul/copy
tag @s remove ut.tmp.copy

# Scoreboard
scoreboard players set #this lifetime 60
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1
# Universal setup
execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast