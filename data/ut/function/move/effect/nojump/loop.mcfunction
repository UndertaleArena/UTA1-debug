#By Nebulirion

#execute store result score @s fly run data get entity @s HurtTime
#execute if score @s jump matches 1.. run say cccc
#execute if entity @s[nbt={OnGround:0b,HurtTime:10s}] run say bbbb

execute if score @s jump matches 1.. run tp @s @s
execute if entity @s[nbt={OnGround:0b,HurtTime:10s}] run tp @s @s
scoreboard players reset @s jump
#
scoreboard players remove @s nojump_timer 1
execute unless score @s nojump_timer matches 1.. run function ut:move/effect/nojump/clear