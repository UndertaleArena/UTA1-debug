#By Nebulirion

scoreboard players add A_Bonus gamerulemode 1
execute unless score A_Bonus gamerulemode matches 0..3 run scoreboard players set A_Bonus gamerulemode 0
execute if score -GameMode game matches 2 unless score A_Bonus gamerulemode matches 0..1 run scoreboard players set A_Bonus gamerulemode 0

execute if score A_Bonus gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grkb","with":[{"translate":"set.grkb.0"}]}]
execute if score A_Bonus gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grkb","with":[{"translate":"set.grkb.1"}]}]
execute if score A_Bonus gamerulemode matches 2 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grkb","with":[{"translate":"set.grkb.2"}]}]
execute if score A_Bonus gamerulemode matches 3 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grkb","with":[{"translate":"set.grkb.3"}]}]
