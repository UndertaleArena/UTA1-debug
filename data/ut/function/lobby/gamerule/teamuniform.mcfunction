#By Nebulirion

scoreboard players add teamUniform gamerule 1
execute unless score teamUniform gamerule matches 0..1 run scoreboard players set teamUniform gamerule 0

execute if score teamUniform gamerule matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grtu","with":[{"translate":"set.off"}]}]
execute if score teamUniform gamerule matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grtu","with":[{"translate":"set.on"}]}]