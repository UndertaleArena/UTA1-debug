#By Nebulirion

execute store result entity @s Pos[0] double 1 run scoreboard players get -center_x border
execute store result entity @s Pos[2] double 1 run scoreboard players get -center_z border

execute facing entity @s feet positioned as @s align y rotated ~180 0 run function ut:game/border/draw/main_1