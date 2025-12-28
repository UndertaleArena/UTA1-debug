#By Nebulirion

execute if entity @s[tag=web] at @s run function ut:move/web/loop
execute if entity @s[tag=vine_center] at @s run function ut:move/vine/loop
execute if entity @s[tag=cupcake] at @s run function ut:move/cupcake/loop
execute if entity @s[tag=mettabot] at @s run function ut:move/mettabot/loop
execute if entity @s[tag=blue_attack] at @s run function ut:move/floor_bone/loop
execute if entity @s[tag=floor_bone] run function ut:move/floor_bone/loop_bones
execute if entity @s[tag=king_shockwave] at @s run function ut:move/king/loop
execute if entity @s[tag=green_flame] at @s run function ut:move/green_flame/loop

function ut:move/lifetime