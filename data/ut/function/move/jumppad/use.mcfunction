#By Nebulirion

scoreboard players set @s unloadtime 20
effect give @s minecraft:slow_falling 3 0 true

scoreboard players add @s[tag=!jumppad_user] move_loop 1
tag @s add jumppad_user