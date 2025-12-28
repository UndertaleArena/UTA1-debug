#By Nebulirion

scoreboard players set @s chr 0
#inventory
clear @s
#
scoreboard players set @s hpmax 2000
scoreboard players set @s mpmax 200
scoreboard players set @s cdmax 100
scoreboard players set @s dtmax 2000
#
execute if entity @s[type=player] run function ut:choose/common
item replace entity @s container.8 with air
#effects
#