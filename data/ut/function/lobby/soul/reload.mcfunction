#By Nebulirion

execute if score @s ptid > TeamCount info run function ut:lobby/soul/deactivate
execute if score allow_join info matches 1 if score @s ptid <= TeamCount info run function ut:lobby/soul/activate
execute if score allow_join info matches 0 if score @s ptid <= TeamCount info run function ut:lobby/soul/half_activate

execute store result entity @s Pos[1] double 1 run scoreboard players get @s y_pos
scoreboard players reset @s life