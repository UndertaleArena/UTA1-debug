#By Nebulirion

execute if entity @s[tag=rotate_as] run tp @s ~ ~ ~ ~3 ~
execute if entity @s[tag=ray_team] run function ut:lobby/soul/loop
execute if entity @s[tag=tut_join] run function ut:lobby/tutorial/as_loop