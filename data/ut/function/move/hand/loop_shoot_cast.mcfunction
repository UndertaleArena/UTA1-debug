#Original By Nebulirion, SY edited

#speed check
scoreboard players operation @s prj_speed = #this prj_speed
scoreboard players operation @s atk = #this atk

#cast shoot bullet
tp @s ~ ~ ~ ~ ~
execute positioned ^ ^-.2 ^.5 run function ut:move/shoot/cast