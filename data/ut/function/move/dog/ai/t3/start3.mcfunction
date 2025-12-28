#By Nebulirion

scoreboard players add @s life2 1
execute unless entity @e[type=marker,tag=jump_target,limit=1,distance=..1] positioned ^ ^ ^0.8 if score @s life2 matches ..64 run function ut:move/dog/ai/t2/start3