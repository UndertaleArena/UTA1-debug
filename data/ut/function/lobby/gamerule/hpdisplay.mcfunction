#By Nebulirion

scoreboard players add hpDisplay gamerule 1
execute unless score hpDisplay gamerule matches 0..2 run scoreboard players set hpDisplay gamerule 0

execute if score hpDisplay gamerule matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grhd","with":[{"translate":"set.grhd.0"}]}]
execute if score hpDisplay gamerule matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grhd","with":[{"translate":"set.grhd.1"}]}]
execute if score hpDisplay gamerule matches 2 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grhd","with":[{"translate":"set.grhd.2"}]}]