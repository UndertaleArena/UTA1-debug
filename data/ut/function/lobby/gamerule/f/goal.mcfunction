#By Nebulirion

scoreboard players add F_Goal gamerulemode 1
execute unless score F_Goal gamerulemode matches 1..5 run scoreboard players set F_Goal gamerulemode 1

tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grf2","with":[{"score":{"name": "F_Goal","objective": "gamerulemode"}}]}]