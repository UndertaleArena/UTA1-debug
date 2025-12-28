#By Nebulirion
#By Nebulirion

scoreboard players add B_Absorb gamerulemode 1
execute unless score B_Absorb gamerulemode matches 0..1 run scoreboard players set B_Absorb gamerulemode 0

execute if score B_Absorb gamerulemode matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grb1.0"}]
execute if score B_Absorb gamerulemode matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.grb1.1"}]