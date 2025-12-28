#By Nebulirion

scoreboard players reset @s launch_timer

effect clear @s minecraft:levitation
effect give @s[tag=delete_user,scores={plt3=81..}] levitation 1 4 true
effect give @s[tag=delete_user,scores={plt3=..80}] levitation 10 0 true
effect give @s[tag=bomb_mtt_user] levitation 2 3 true
effect give @s[tag=angel_user,scores={plt3=0..6}] levitation 2 7 true
effect give @s[tag=angel_user,scores={plt3=7..}] levitation 2 0 true

scoreboard players remove @s[tag=effect_launch] move_loop 1
tag @s remove effect_launch