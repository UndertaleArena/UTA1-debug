#By Nebulirion

execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{sp_show:1b}}}] run clear @s carrot_on_a_stick[custom_data~{sp_switch:1b}]
execute if entity @s[tag=passive_asgore] run clear @s carrot_on_a_stick[custom_data~{nomercy:1b}]
execute if entity @s[tag=passive_mettaton] run function ut:move/passive/mettaton/clear
###
tag @s remove passive_sans_cd
tag @s remove passive_muffet_cd
tag @s remove passive_flowey_ready
tag @s remove passive_alphys_ready
###
tag @s remove passive_sans
tag @s remove passive_papyrus
tag @s remove passive_undyne
tag @s remove passive_flowey
tag @s remove passive_frisk
tag @s remove passive_muffet
tag @s remove passive_mettaton
tag @s remove passive_chara
tag @s remove passive_toriel
tag @s remove passive_asgore
tag @s remove passive_asriel
tag @s remove passive_alphys
tag @s remove passive_napstablook
tag @s remove passive_maddummy
tag @s remove passive_mettatonex
tag @s remove passive_default
###
data modify storage ut:soul Temp set value {passive:"none"}
data modify storage ut:soul Temp.passive set from entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".passive
###
execute if data storage ut:soul Temp{passive:"sans"} run tag @s add passive_sans
execute if data storage ut:soul Temp{passive:"papyrus"} run tag @s add passive_papyrus
execute if data storage ut:soul Temp{passive:"undyne"} run tag @s add passive_undyne
execute if data storage ut:soul Temp{passive:"flowey"} run tag @s add passive_flowey
execute if data storage ut:soul Temp{passive:"frisk"} run tag @s add passive_frisk
execute if data storage ut:soul Temp{passive:"muffet"} run tag @s add passive_muffet
execute if data storage ut:soul Temp{passive:"mettaton"} run tag @s add passive_mettaton
execute if data storage ut:soul Temp{passive:"chara"} run tag @s add passive_chara
execute if data storage ut:soul Temp{passive:"toriel"} run tag @s add passive_toriel
execute if data storage ut:soul Temp{passive:"asgore"} run tag @s add passive_asgore
execute if data storage ut:soul Temp{passive:"asriel"} run tag @s add passive_asriel
execute if data storage ut:soul Temp{passive:"alphys"} run tag @s add passive_alphys
execute if data storage ut:soul Temp{passive:"napstablook"} run tag @s add passive_napstablook
execute if data storage ut:soul Temp{passive:"maddummy"} run tag @s add passive_maddummy
execute if data storage ut:soul Temp{passive:"mettatonex"} run tag @s add passive_mettatonex
execute if data storage ut:soul Temp{passive:"default"} run tag @s add passive_default
###
scoreboard players set @s passive_timer 0
###
execute if entity @s[tag=dt_ready] run function ut:move/passive/dt_fill
execute if entity @s[tag=passive_asgore] run function ut:move/nomercy/passive
execute if entity @s[tag=passive_mettaton] run function ut:move/passive/mettaton/give

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{sp_show:1b}}}] unless data entity @s Inventory[{components:{"minecraft:custom_data":{sp_switch:1b}}}] run function ut:move/sp_show/switch/give