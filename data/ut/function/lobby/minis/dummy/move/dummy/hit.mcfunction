#By Nebulirion

#hit effect
#particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.2 20 force @a[scores={Q=2..}]
playsound minecraft:block.bamboo.break player @a ~ ~ ~ 2 0.7
execute as @a if score @s pid = @e[tag=atker,limit=1] pid run function ut:lobby/minis/dummy/player/hit_feedback

#check dead
execute if score @s hp matches ..0 run function ut:lobby/minis/dummy/move/dummy/kill

#prj remove
execute as @e[type=husk,tag=atker] run function ut:lobby/minis/dummy/move/spear/deco
execute as @e[type=armor_stand,tag=atker] run function ut:lobby/minis/dummy/move/bone/deco
