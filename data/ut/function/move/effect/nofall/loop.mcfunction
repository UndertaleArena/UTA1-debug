#By Nebulirion

#scoreboard players remove @s nofall_timer 1
execute if entity @s[nbt={OnGround:1b}] run function ut:move/effect/nofall/clear
#execute unless score @s nofall_timer matches 1.. run function ut:move/effect/nofall/clear