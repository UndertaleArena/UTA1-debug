#By Nebulirion

scoreboard players add dtRule gamerule 1
execute unless score dtRule gamerule matches 0..3 run scoreboard players set dtRule gamerule 0

execute if score dtRule gamerule matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grdr","with":[{"translate":"set.grdr.0"}]}]
execute if score dtRule gamerule matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grdr","with":[{"translate":"set.grdr.1"}]}]
execute if score dtRule gamerule matches 2 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grdr","with":[{"translate":"set.grdr.2"}]}]
execute if score dtRule gamerule matches 3 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grdr","with":[{"translate":"set.grdr.3"}]}]