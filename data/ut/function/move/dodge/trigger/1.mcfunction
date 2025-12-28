#By Nebulirion

tag @s add counter
execute if entity @e[tag=atker,tag=ignore_dodge] run function ut:move/counter/fail

execute unless entity @e[tag=atker,tag=ignore_dodge] run function ut:move/dodge/trigger/2