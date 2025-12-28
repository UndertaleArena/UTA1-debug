#By Nebulirion


execute store result score #cmd soul run data get storage soul SoulInv[0].components."minecraft:custom_model_data"
scoreboard players remove #cmd soul 10
execute store result storage soul SoulInv[0].components."minecraft:custom_model_data" int 1 run scoreboard players get #cmd soul
data modify storage soul SoulInv[0].components."minecraft:custom_data".canned set value 0b