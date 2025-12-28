#By Nebulirion

#say reset move ....

execute if entity @s[advancements={ut:chr/undyne/lv20=true},scores={chr=3}] run function ut:choose/undyne_skin

execute store result score -clearcount store run clear @s carrot_on_a_stick[custom_data~{chaos_buster:1b}] 1
execute if score -clearcount store matches 1.. run function ut:choose/resetmove_asriel_mp

execute store result score -clearcount store run clear @s carrot_on_a_stick[custom_data~{save:1b}] 1
execute if score -clearcount store matches 1.. run function ut:choose/resetmove_frisk_dt

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{dummy_charge:1b,is_knife:0b}}}] run function ut:move/dummy_charge/display_f