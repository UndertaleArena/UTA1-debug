#By Nebulirion

scoreboard players set #drop soul 0
execute store result score #drop soul run clear @s carrot_on_a_stick[custom_data~{soul:1b}] 0
execute if score dropSoul gamerule matches 2 run scoreboard players operation #drop soul /= 2 const

data modify storage soul PlayerInv set from entity @s Inventory
data modify storage soul SoulInv set value []
execute if data storage soul PlayerInv[0] run function ut:system/soul/dropmulti_checkloop
execute if score #drop soul matches 1.. run function ut:system/soul/dropmulti_droploop