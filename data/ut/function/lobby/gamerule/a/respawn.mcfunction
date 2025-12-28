#By Nebulirion

execute if score A_Respawn gamerulemode matches 5 run scoreboard players set A_Respawn gamerulemode 6
execute if score A_Respawn gamerulemode matches 3..4 run scoreboard players set A_Respawn gamerulemode 5
execute if score A_Respawn gamerulemode matches 2 run scoreboard players set A_Respawn gamerulemode 3
execute if score A_Respawn gamerulemode matches 0..1 run scoreboard players set A_Respawn gamerulemode 2
execute unless score A_Respawn gamerulemode matches 0..5 run scoreboard players set A_Respawn gamerulemode 0

#execute if score A_Border gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.warning"},{"translate":"set.grare.w","with":[{"translate":"set.off"}]}]
#execute if score A_Respawn gamerulemode matches 1.. run scoreboard players set A_Border gamerulemode 0

execute if score A_Respawn gamerulemode matches ..0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grare0","with":[{"translate":"set.off"}]}]
execute if score A_Respawn gamerulemode matches 1.. run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grare1","with":[{"score":{"name": "A_Respawn","objective": "gamerulemode"}}]}]