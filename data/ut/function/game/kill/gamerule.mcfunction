#By Nebulirion

scoreboard players operation killBonus gamerule = C_Bonus gamerulemode

#execute if score killBonus gamerule matches 3 run scoreboard players set dropSoul gamerule 1
execute if score killBonus gamerule matches 3 run scoreboard players set absorbSoul gamerule 1

scoreboard players set inactiveGlow gamerule 1200