#By Nebulirion

scoreboard players add swapCharacter gamerule 1
execute unless score swapCharacter gamerule matches 0..1 run scoreboard players set swapCharacter gamerule 0

execute if score swapCharacter gamerule matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grsc","with":[{"translate":"set.on"}]}]
execute if score swapCharacter gamerule matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grsc","with":[{"translate":"set.off"}]}]