#By Nebulirion

execute if score @s life matches ..9 run tp @s ~ ~ ~ ~ ~1
execute if score @s life matches 10 run tp @s ~ ~ ~ ~ 0
execute if score @s life matches 10.. run function ut:move/cupcake/loop_normal

execute if score @s life matches 160.. run function ut:move/cupcake/stop