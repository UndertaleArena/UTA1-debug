#By Nebulirion

scoreboard players operation #this aid = @s aid
execute as @e[tag=dog_model] if score @s aid = #this aid run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats[0] set value 4
