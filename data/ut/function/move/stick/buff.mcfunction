#By Nebulirion

execute store result score -clear store run clear @s minecraft:carrot_on_a_stick[custom_data~{stick:1b}]
execute if score -clear store matches 1.. run give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=302,minecraft:lore=['{"translate":"dsc.mwmove","italic":false,"color":"gray"}','{"text":""}','{"translate":"chr.frisk.mw1","italic":false,"color":"white"}','{"translate":"chr.frisk.mw2","italic":false,"color":"white"}'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:knockback":1},show_in_tooltip:0b},minecraft:custom_name='{"text":"","color":"yellow","bold":true,"extra":[{"translate":"chr.frisk.mw","italic":false,"color":"aqua"}]}',minecraft:custom_data={cost:0,mp_move:1b,stick:1b},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}]
execute if score -clear store matches 1 run tag @s add attack_buffed_stick_flag
