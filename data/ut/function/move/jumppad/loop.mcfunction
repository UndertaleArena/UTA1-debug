#By Nebulirion

scoreboard players operation #pad sid = @s sid
execute as @a if score @s pid = #pad sid run tag @s add jumppad_p

execute unless entity @s[tag=jumppad_void] run function ut:move/jumppad/loop_jumppad
execute if entity @s[tag=jumppad_void] run function ut:move/jumppad/loop_voidpad

tag @a remove jumppad_p