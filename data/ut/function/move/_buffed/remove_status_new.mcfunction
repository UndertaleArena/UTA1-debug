#By Nebulirion

execute if entity @s[tag=attack_buffed_knife_flag] run function ut:move/knife/buff_undo
execute if entity @s[tag=attack_buffed_stick_flag] run function ut:move/stick/buff_undo
execute if entity @s[tag=attack_buffed_lazer_ex_flag] run function ut:move/lazer_ex/buff_undo
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{passive:"default"}}}] run function ut:move/hand/cast/buff_undo