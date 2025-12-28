#By Nebulirion

scoreboard players operation #temp ml = @s mlmax
scoreboard players operation #temp ml *= 2 const

execute if score @s ml > #temp ml run scoreboard players operation @s ml = #temp ml
