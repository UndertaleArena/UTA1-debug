#Original By Nebulirion, SY edited

scoreboard players set @s life 40

#item display
execute if items entity @s armor.head *[custom_model_data=24] run item replace entity @s armor.head with bone_meal[custom_model_data=25]
execute if items entity @s armor.head *[custom_model_data=26] run item replace entity @s armor.head with bone_meal[custom_model_data=27]

#tag setting
tag @s add disable