#By Nebulirion

#new
execute store success score #togsuc store run tag @s add spectator
execute if score #togsuc store matches 0 run tag @s remove spectator

execute unless entity @s[tag=spectator] run tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.sp1"}]
execute unless entity @s[tag=spectator] run tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.sp2"}]
execute unless entity @s[tag=spectator,tag=!playing] run function ut:choose/lobby_x
execute if entity @s[tag=spectator,tag=!playing] run function ut:choose/spectator