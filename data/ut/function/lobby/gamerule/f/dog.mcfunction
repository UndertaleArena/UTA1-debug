#By Nebulirion

scoreboard players add F_Dog gamerulemode 1
execute unless score F_Dog gamerulemode matches 1 run scoreboard players set F_Dog gamerulemode 1

execute if score F_Dog gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grf1","with":[{"translate":"set.grf1.0"}]}]