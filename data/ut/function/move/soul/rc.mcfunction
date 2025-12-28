#By Nebulirion

execute if entity @s[tag=boss] unless score @s soul_timer matches 80.. unless score #animation game matches 1 run function ut:move/soul/use
execute unless entity @s[tag=boss] if data entity @s SelectedItem.components."minecraft:custom_data"{nonboss:1b} unless entity @s[tag=amalgamate] unless score @s soul_timer matches 80.. run function ut:move/soul/use