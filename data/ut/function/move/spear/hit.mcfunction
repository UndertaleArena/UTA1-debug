###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
tag @s add target
scoreboard players operation #target pid = @s pid

execute unless entity @s[tag=effect_immune] run tag @e[tag=atker,limit=1] add gave_impaled
execute unless entity @s[tag=effect_immune] run function ut:move/effect/impaled/give

execute store result score #neg y_pos run data get entity @s Pos[1] 1000
execute as @e[tag=atker,limit=1] run function ut:move/spear/hit_atker
tag @s remove target
###MAIN
function ut:move/hit/main