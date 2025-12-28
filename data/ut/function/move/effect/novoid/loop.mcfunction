#By Nebulirion

execute if entity @s[tag=effect_novoid_inair] run function ut:move/effect/novoid/loop_inair

#execute if score @s novoid_timer matches 160 run function ut:move/effect/nofall/give

scoreboard players remove @s novoid_timer 1
execute unless score @s novoid_timer matches 1.. run function ut:move/effect/novoid/clear
