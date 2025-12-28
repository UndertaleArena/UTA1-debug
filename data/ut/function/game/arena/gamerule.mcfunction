#By Nebulirion

scoreboard players operation L gamerule = A_Respawn gamerulemode
scoreboard players operation killBonus gamerule = A_Bonus gamerulemode
scoreboard players operation hasBorder gamerule = A_Border gamerulemode

scoreboard players set inactiveGlow gamerule 1200

execute if score killBonus gamerule matches 3 run scoreboard players set absorbSoul gamerule 1