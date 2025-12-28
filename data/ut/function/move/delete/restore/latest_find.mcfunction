#Original By Nebulirion, edited by SY

#check score
execute if score #temp store < @s aid run scoreboard players operation #temp store = @s aid

#tagging
execute if score #temp store = @s aid run tag @e[tag=store_latest] remove store_latest

execute if score #temp store = @s aid run tag @s add store_latest