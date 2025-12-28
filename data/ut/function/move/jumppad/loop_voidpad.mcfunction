#By Nebulirion

particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.01 1 force @a[scores={Q=2..}]

tp @a[tag=jumppad_p,limit=1] ~ ~ ~

execute if score @s life2 <= @s plt1 positioned ~ ~-0.8 ~ run tp @s ^ ^ ^.8
execute unless score @s life2 <= @s plt1 unless score @s life2 > @s plt2 run tp @s ^ ^ ^.8
execute if score @s life2 > @s plt2 positioned ~ ~0.8 ~ run tp @s ^ ^ ^.8

scoreboard players remove @s life2 1
execute unless score @s life2 matches 1.. as @a[tag=jumppad_p,tag=jumppad_user,limit=1] run function ut:move/jumppad/stop