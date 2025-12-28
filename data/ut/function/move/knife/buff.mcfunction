#By Nebulirion

execute store result score -clear store run clear @s minecraft:carrot_on_a_stick[custom_data~{knife:1b}]
execute if score -clear store matches 1.. run give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data={floats:[303]},minecraft:lore=[{"translate":"dsc.mwmove","italic":false,"color":"gray"},{"text":""},{"translate":"chr.chara.mw1","italic":false,"color":"white"}],minecraft:attribute_modifiers=[],minecraft:enchantments={},minecraft:custom_name={"text":"","color":"yellow","bold":true,"extra":[{"translate":"chr.chara.mw","italic":false,"color":"aqua"}]},minecraft:custom_data={cost:0,knife:1b,mp_move:1b},minecraft:dyed_color=10511680,tooltip_display={hidden_components:["attribute_modifiers","enchantments","dyed_color"]}]
execute if score -clear store matches 1.. run tag @s add attack_buffed_knife_flag
