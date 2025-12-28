#By Nebulirion

scoreboard players set @s chr 0
#
clear @s
#
tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.sp0"}]
#
scoreboard players set @s hpmax 3000
scoreboard players set @s mpmax 300
scoreboard players set @s cdmax 100
scoreboard players set @s dtmax 3000
#
execute if entity @s[type=player] run function ut:choose/common
item replace entity @s container.8 with air
#
#
scoreboard players set @s tid 0
team leave @s
scoreboard players set @s lv 0
effect give @s minecraft:invisibility infinite 0 true
effect give @s minecraft:glowing infinite 0 true