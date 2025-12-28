#By Nebulirion

tag @s add counter
execute if entity @e[tag=atker,tag=ingore_ghost] run function ut:move/counter/fail
execute unless entity @e[tag=atker,tag=ingore_ghost] run function ut:move/ghost/trigger/2