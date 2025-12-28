#By Nebulirion

scoreboard players add D_Goal gamerulemode 1
execute unless score D_Goal gamerulemode matches 1..4 run scoreboard players set D_Goal gamerulemode 1

scoreboard players operation #bestof gamerulemode = D_Goal gamerulemode
scoreboard players operation #bestof gamerulemode *= 2 const
scoreboard players remove #bestof gamerulemode 1

execute if score D_Goal gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grd20"}]
execute unless score D_Goal gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grd21","with":[{"color":"green","score":{"name": "#bestof","objective": "gamerulemode"}}]}]