#By Nebulirion

scoreboard players reset @s pickup_candy
execute store result score #temp store run clear @s glow_berries[custom_data~{monster_candy:1b}]

execute if score #temp store matches 1.. run function ut:map/s_ruins/candy/eat