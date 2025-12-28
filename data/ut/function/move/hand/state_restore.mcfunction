#Original By Nebulirion, SY edited

#scoreboard reset
scoreboard players reset @s life

#item display
execute if items entity @s armor.head *[custom_model_data=25] run item replace entity @s armor.head with bone_meal[custom_model_data=24]
execute if items entity @s armor.head *[custom_model_data=27] run item replace entity @s armor.head with bone_meal[custom_model_data=26]

#tag setting
tag @s remove disable

tag @s remove hand_rev
tag @s remove stuck

#go to the front of player
execute as @p[tag=hand_user] at @s anchored eyes run tp @e[tag=hand_curr] ^ ^ ^.8 ~ ~