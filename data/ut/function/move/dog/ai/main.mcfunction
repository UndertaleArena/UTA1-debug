#By Nebulirion

execute unless score @s dogait matches 1..5 run function ut:move/dog/ai/random_rotation
execute unless score @s dogait matches 1..5 run function ut:move/dog/ai/t3/start

execute if score @s dogait matches 1 run function ut:move/dog/ai/t1/loop

execute if score @s dogait matches 2 at @s run function ut:move/dog/ai/t2/loop
execute if score @s dogait matches 3 at @s run function ut:move/dog/ai/t3/loop
execute if score @s dogait matches 4 at @s run function ut:move/dog/ai/t4/loop

execute if score @s dogait matches 5 run function ut:move/dog/ai/t5/loop