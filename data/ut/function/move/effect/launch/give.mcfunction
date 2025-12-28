#By Nebulirion

scoreboard players set @s launch_timer 3
scoreboard players add @s[tag=!effect_launch] move_loop 1
tag @s add effect_launch

execute if score -level launch_timer matches 5 run effect give @s minecraft:levitation 10 5 true
execute if score -level launch_timer matches 10 run effect give @s minecraft:levitation 10 10 true
execute if score -level launch_timer matches 15 run effect give @s minecraft:levitation 10 15 true
execute if score -level launch_timer matches 20 run effect give @s minecraft:levitation 10 20 true