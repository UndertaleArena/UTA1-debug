#By Nebulirion

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{chaos_buster:1b}}}] run function ut:move/chaos_buster/full_stage
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{knife:1b}}}] run function ut:move/knife/buff
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{real_knife_knife:1b}}}] if entity @s[tag=had_knife] run tag @s add attack_buffed_knife_flag
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{stick:1b}}}] run function ut:move/stick/buff
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{lazer_ex:1b}}}] run function ut:move/lazer_ex/buff
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{passive:"default"}}}] run function ut:move/hand/cast/buff