#Original By Nebulirion, SY edited

#set id
#odd 24; even 26
scoreboard players add #temp store 1
scoreboard players operation @s passive_timer = #temp store
#set model
scoreboard players operation -temp store = #temp store
scoreboard players operation -temp store %= 2 const
execute if score -temp store matches 1 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 24
execute if score -temp store matches 0 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 26

#set normal states
function ut:move/cast