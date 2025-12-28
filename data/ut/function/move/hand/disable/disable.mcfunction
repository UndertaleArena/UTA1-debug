#Original By Nebulirion, SY edited

scoreboard players set @s life 40

#item display
execute if items entity @s armor.head *[custom_model_data={floats:[24]}] run item replace entity @s armor.head with bone_meal[custom_model_data={floats:[25]}]
execute if items entity @s armor.head *[custom_model_data={floats:[26]}] run item replace entity @s armor.head with bone_meal[custom_model_data={floats:[27]}]

#tag setting
tag @s add disable