#By Nebulirion

execute store result score -clear store run clear @s minecraft:carrot_on_a_stick[custom_data~{real_knife_knife:1b}]
execute if score -clear store matches 1.. run give @s[tag=had_knife,tag=attack_buffed] minecraft:carrot_on_a_stick[minecraft:custom_model_data={floats:[303]},minecraft:lore=[{"translate":"dsc.mwmove","italic":false,"color":"gray"},{"text":""},{"translate":"chr.chara.mw1","italic":false,"color":"white"}],minecraft:attribute_modifiers=[],minecraft:enchantments={},minecraft:custom_name={"text":"","color":"yellow","bold":true,"extra":[{"translate":"chr.chara.mw","italic":false,"color":"aqua"}]},minecraft:custom_data={cost:0,knife:1b,mp_move:1b},minecraft:dyed_color=10511680,tooltip_display={hidden_components:["attribute_modifiers","enchantments","dyed_color"]}]
execute if score -clear store matches 1.. run give @s[tag=had_knife,tag=!attack_buffed] minecraft:carrot_on_a_stick[minecraft:custom_model_data={floats:[22]},minecraft:lore=[{"translate":"dsc.mwmove","italic":false,"color":"gray"},{"text":""},{"translate":"chr.chara.mw1","italic":false,"color":"white"}],minecraft:attribute_modifiers=[],minecraft:enchantments={},minecraft:custom_name={"text":"","color":"yellow","bold":true,"extra":[{"translate":"chr.chara.mw","italic":false,"color":"white"}]},minecraft:custom_data={cost:0,knife:1b,mp_move:1b},minecraft:dyed_color=10511680,tooltip_display={hidden_components:["attribute_modifiers","enchantments","dyed_color"]}]
#
execute if entity @s[tag=!passive_papyrus] run function ut:player/dt/reset
scoreboard players operation @s dtmath -= @s dthalf
execute if entity @s[tag=passive_papyrus] run scoreboard players operation @s dt = @s dtmath
scoreboard players reset @s dtmath
function ut:player/dt/lose
#scoreboard players remove @s[tag=passive_papyrus] dt 80
#
scoreboard players reset @s plt3
scoreboard players reset @s unloadtime_3rd
scoreboard players remove @s[tag=real_knife_user] move_loop 1
tag @s remove had_knife
tag @s remove real_knife_user
tag @s remove dt_lock