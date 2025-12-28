#By Nebulirion

#execute store result score @s fly run data get entity @s HurtTime
#execute if score @s jump matches 1.. run say cccc
#execute if entity @s[nbt={OnGround:0b,HurtTime:10s}] run say bbbb
execute if score @s impaled_level matches 4.. run function ut:move/effect/impaled/loop_nojump
#
scoreboard players remove @s impaled_timer 1
execute unless score @s impaled_timer matches 1.. run function ut:move/effect/impaled/clear