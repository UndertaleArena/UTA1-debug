#By Nebulirion

scoreboard players add A_Border gamerulemode 1
execute unless score A_Border gamerulemode matches 0..1 run scoreboard players set A_Border gamerulemode 0

#execute unless score A_Respawn gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.warning"},{"translate":"set.grabm.w","with":[{"translate":"set.off"}]}]
#execute if score A_Border gamerulemode matches 1 run scoreboard players set A_Respawn gamerulemode 0

execute if score A_Border gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grabm","with":[{"translate":"set.off"}]}]
execute if score A_Border gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grabm","with":[{"translate":"set.on"}]}]