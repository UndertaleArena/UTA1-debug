#By Nebulirion

execute store result score -clear store run clear @s minecraft:carrot_on_a_stick[custom_data~{stick:1b}]
execute if score -clear store matches 1.. run give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data={floats:[302]},minecraft:lore=[{"translate":"dsc.mwmove","italic":false,"color":"gray"},{"text":""},{"translate":"chr.frisk.mw1","italic":false,"color":"white"},{"translate":"chr.frisk.mw2","italic":false,"color":"white"}],minecraft:attribute_modifiers=[],minecraft:enchantments={"minecraft:knockback":1},minecraft:custom_name={"text":"","color":"yellow","bold":true,"extra":[{"translate":"chr.frisk.mw","italic":false,"color":"aqua"}]},minecraft:custom_data={cost:0,mp_move:1b,stick:1b},minecraft:dyed_color=10511680,tooltip_display={hidden_components:["attribute_modifiers","enchantments","dyed_color"]}]
execute if score -clear store matches 1 run tag @s add attack_buffed_stick_flag
