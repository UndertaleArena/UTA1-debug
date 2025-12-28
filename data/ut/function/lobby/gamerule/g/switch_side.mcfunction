#By Nebulirion

scoreboard players add G_SwitchSide gamerulemode 1
execute unless score G_SwitchSide gamerulemode matches 0..1 run scoreboard players set G_SwitchSide gamerulemode 0

execute if score G_SwitchSide gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grss","with":[{"translate":"set.off"}]}]
execute if score G_SwitchSide gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grss","with":[{"translate":"set.on"}]}]