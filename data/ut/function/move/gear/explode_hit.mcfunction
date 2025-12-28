###Generated from Nebulagen made By Nebulirion
#02/18/2021, 22:08:08

###EXTRA
execute if entity @s[tag=!effect_immune] run function ut:move/effect/stunned/give
execute unless score @s stun_timer matches 20.. run scoreboard players set @s[tag=!effect_immune] stun_timer 20
###MAIN
function ut:move/hit/main