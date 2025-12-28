#By Nebulirion

scoreboard players set @s life2 0
execute at @s facing entity @e[type=marker,tag=jump_target,limit=1] feet positioned ^ ^ ^-0.8 run function ut:move/dog/ai/t2/start3

scoreboard players operation @s plt1 = @s life2
scoreboard players operation @s plt1 /= 3 const
scoreboard players operation @s plt2 = @s life2
scoreboard players operation @s plt2 -= @s plt1

tp @s ~ ~ ~ ~ ~