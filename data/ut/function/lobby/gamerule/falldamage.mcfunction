#By Nebulirion

scoreboard players add fallDamage gamerule 1
execute unless score fallDamage gamerule matches 0..1 run scoreboard players set fallDamage gamerule 0

execute if score fallDamage gamerule matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grfd","with":[{"translate":"set.on"}]}]
execute if score fallDamage gamerule matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grfd","with":[{"translate":"set.off"}]}]