#By Nebulirion

#check on this
execute positioned ^ ^ ^ run function ut:move/rot/12husk
data merge entity @e[tag=summon,limit=1] {Tags:[summon,move,spc,angel_wing],NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,ArmorItems:[{},{},{},{}],CustomNameVisible:0b,Team:"nocol"}

scoreboard players set #this lifetime 1000
scoreboard players set #this damage 0
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players set @e[tag=summon,limit=1] rot 780000
scoreboard players operation @e[tag=summon,limit=1] sid = @s pid
scoreboard players operation @e[tag=summon,limit=1] atk = @s atk
scoreboard players operation @e[tag=summon,limit=1] prj_speed = @s prj_speed

execute if score -wing plt3 matches 2 run tag @e[tag=summon,limit=1] add wing_mirror

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast
