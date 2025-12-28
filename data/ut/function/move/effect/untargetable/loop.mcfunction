#By Nebulirion

execute if score @s untarget_timer matches 2.. run particle minecraft:totem_of_undying ~ ~1.5 ~ .3 .5 .3 0 2

scoreboard players remove @s untarget_timer 1
execute unless score @s untarget_timer matches 1.. run function ut:move/effect/untargetable/clear