#By Nebulirion

scoreboard players set @s nomercy_timer 600
scoreboard players add @s[tag=!effect_nomercy] move_loop 1
tag @s add effect_nomercy

execute store result score -clearcount store run clear @s #ut:spare[custom_data~{spare:1b}]
clear @s carrot_on_a_stick[custom_data~{nomercy:1b}]

execute if score -clearcount store matches 1.. run function ut:move/effect/nomercy/give/pre

playsound minecraft:block.glass.break player @s[tag=!nomercy_user] ~ ~ ~ 1.6 0.75
title @s[tag=!nomercy_user] title ["",{"translate":"sts.nomercy"}]
title @s[tag=!nomercy_user] times 5 10 5
scoreboard players set @s[tag=!nomercy_user] title_timer 15