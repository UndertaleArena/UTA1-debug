#By Nebulirion

scoreboard players add B_Goal gamerulemode 1
execute unless score B_Goal gamerulemode matches -3..3 run scoreboard players set B_Goal gamerulemode -3

execute if score B_Goal gamerulemode matches ..-1 run scoreboard players operation B_Goal_ne gamerulemode = B_Goal gamerulemode
execute if score B_Goal gamerulemode matches ..-1 run scoreboard players operation B_Goal_ne gamerulemode *= -1 const

execute if score B_Goal gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grbsc0"}]
execute if score B_Goal gamerulemode matches ..-1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grbsc1","with":[{"score":{"name": "B_Goal_ne","objective": "gamerulemode"}}]}]
execute if score B_Goal gamerulemode matches 1.. run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grbsc2","with":[{"score":{"name": "B_Goal","objective": "gamerulemode"}}]}]