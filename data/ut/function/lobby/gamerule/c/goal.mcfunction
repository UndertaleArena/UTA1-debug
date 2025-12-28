#By Nebulirion

scoreboard players add C_Goal gamerulemode 1
execute unless score C_Goal gamerulemode matches -3..3 run scoreboard players set C_Goal gamerulemode -3

execute if score C_Goal gamerulemode matches ..-1 run scoreboard players operation C_Goal_ne gamerulemode = C_Goal gamerulemode
execute if score C_Goal gamerulemode matches ..-1 run scoreboard players operation C_Goal_ne gamerulemode *= -1 const

execute if score C_Goal gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grc20"}]
execute if score C_Goal gamerulemode matches ..-1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grc21","with":[{"score":{"name": "C_Goal_ne","objective": "gamerulemode"}}]}]
execute if score C_Goal gamerulemode matches 1.. run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grc22","with":[{"score":{"name": "C_Goal","objective": "gamerulemode"}}]}]