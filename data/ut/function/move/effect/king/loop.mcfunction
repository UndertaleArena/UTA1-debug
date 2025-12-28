#By Nebulirion

#
#scoreboard players operation #user pid = @s pid
#execute as @e[tag=crown] if score @s sid = #user pid rotated as @s run tp @s ~ ~.2 ~ ~10 ~
#
execute if entity @s[tag=king_fall] run function ut:move/effect/king/loop_air
#
scoreboard players remove @s king_timer 1
execute unless score @s king_timer matches 1.. run function ut:move/effect/king/clear