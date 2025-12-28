#By Nebulirion

#particle minecraft:enchant ^ ^ ^-.5 0.2 0.2 0.2 0 3

execute if score @s life matches ..999 run function ut:lobby/credit/a/ak/axe/loop_move
execute if score @s life matches 1000.. run function ut:lobby/credit/a/ak/axe/loop_hit

scoreboard players add @s life 1
execute if score @s life >= @s lifetime run kill @s