#By Nebulirion

scoreboard players set @s unloadtime_2nd 6
scoreboard players set @s unloadtime 10
# scoreboard players set @s last_fight 0

execute unless data entity @s SelectedItem.components."minecraft:custom_data".head run function ut:move/bark/cast
execute if data entity @s SelectedItem.components."minecraft:custom_data".head if score @s dog matches 66 run function ut:move/bark/_sys/cast

item replace entity @s weapon.mainhand with air
