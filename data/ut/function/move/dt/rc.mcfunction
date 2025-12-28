#By Nebulirion

execute unless entity @s[tag=dt_ready] run function ut:move/dt/fail

scoreboard players set #reset dt 0

execute if entity @s[tag=dt_ready,tag=!dt_shield] run function ut:move/dt/use

execute if score #reset dt matches 1 run function ut:player/dt/reset