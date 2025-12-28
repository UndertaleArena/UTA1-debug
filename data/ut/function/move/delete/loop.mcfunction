#Original By Nebulirion, edited by SY

#score adding
scoreboard players add @s life 1

#warn stuff
execute as @a run function ut:move/delete/warn

#end check
execute if score @s life matches 20 run function ut:move/delete/cast_delete