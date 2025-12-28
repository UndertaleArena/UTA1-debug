###By Nebulirion
###START
scoreboard players operation #atker sid = @s sid
execute as @a[tag=playing] if score @s pid = #atker sid run tag @s add sticking_p
###XZPOS
execute at @a[tag=sticking_p,limit=1] run tp @s ~ ~ ~
execute unless entity @a[tag=sticking_p] run function ut:void
###YPOS
execute store result score #this y_pos run data get entity @a[tag=sticking_p,limit=1] Pos[1] 1000
scoreboard players operation #this y_pos += @s y_pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #this y_pos
###TIMER
scoreboard players remove @s life 1
execute unless score @s life matches 1.. run function ut:move/spear/stick_end
###END
tag @a[tag=sticking_p] remove sticking_p