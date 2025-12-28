#By Nebulirion

scoreboard players add D_Border gamerulemode 1
execute unless score D_Border gamerulemode matches 0..1 run scoreboard players set D_Border gamerulemode 0

execute if score D_Border gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grabm","with":[{"translate":"set.off"}]}]
execute if score D_Border gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grabm","with":[{"translate":"set.on"}]}]