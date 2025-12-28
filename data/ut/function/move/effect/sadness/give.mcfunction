#By Nebulirion

scoreboard players add @s[tag=effect_sadness_max] sadness_timer 10
scoreboard players set @s[tag=!effect_sadness_max] sadness_timer 60
scoreboard players add @s[tag=!effect_sadness_max] sadness_level 1
scoreboard players add @s[tag=!effect_sadness] move_loop 1
tag @s add effect_sadness

execute if score @s sadness_timer matches 100.. run scoreboard players set @s sadness_timer 100
execute if score @s[tag=!effect_sadness_max] sadness_level matches 6.. run function ut:move/effect/sadness/max
