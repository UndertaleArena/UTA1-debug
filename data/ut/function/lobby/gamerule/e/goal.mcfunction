#By Nebulirion

scoreboard players add E_Goal gamerulemode 1
execute unless score E_Goal gamerulemode matches -3..3 run scoreboard players set E_Goal gamerulemode -3

execute if score E_Goal gamerulemode matches ..-1 run scoreboard players operation E_Goal_ne gamerulemode = E_Goal gamerulemode
execute if score E_Goal gamerulemode matches ..-1 run scoreboard players operation E_Goal_ne gamerulemode *= -1 const

execute if score E_Goal gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.gre20"}]
execute if score E_Goal gamerulemode matches ..-1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.gre21","with":[{"score":{"name": "E_Goal_ne","objective": "gamerulemode"}}]}]
execute if score E_Goal gamerulemode matches 1.. run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.gre22","with":[{"score":{"name": "E_Goal","objective": "gamerulemode"}}]}]