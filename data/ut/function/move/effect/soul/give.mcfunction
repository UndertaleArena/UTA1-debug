#By Nebulirion

function ut:move/effect/soul/clear

function ut:move/effect/immunity/give
scoreboard players set @s immune_timer 100

scoreboard players set @s soul_timer 100
scoreboard players add @s[tag=!effect_soul] move_loop 1
tag @s add effect_soul

#####
#####

#effect give @s minecraft:fire_resistance infinite 0