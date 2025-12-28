#By Nebulirion

execute facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=motion_prj] at @s run function ut:move/motion_reflect
execute if entity @s[tag=blockable] run scoreboard players operation @s pid = #atker pid
execute if entity @s[tag=blockable] run scoreboard players operation @s tid = #atker tid