#By Nebulirion

scoreboard players add F_Bonus gamerulemode 1
execute unless score F_Bonus gamerulemode matches 0..1 run scoreboard players set F_Bonus gamerulemode 0

execute if score F_Bonus gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grkb","with":[{"translate":"set.grkb.0"}]}]
execute if score F_Bonus gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grkb","with":[{"translate":"set.grkb.1"}]}]