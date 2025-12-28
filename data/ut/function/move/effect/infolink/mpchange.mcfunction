#By Nebulirion

scoreboard players operation #temp mp = @s mpmax
scoreboard players operation #temp mp *= 2 const

execute if score @s mp > #temp mp run scoreboard players operation @s mp = #temp mp
