#By Nebulirion

execute unless data entity @s SelectedItem.components."minecraft:custom_data".bomb_ex run function ut:move/bomb_ex/stop

scoreboard players remove @s plt2 1
scoreboard players add @s plt2b 1

execute if score @s plt2b matches 5.. anchored eyes run function ut:move/bomb/cast
execute if score @s plt2b matches 5.. run scoreboard players set @s plt2b 0

execute if score @s plt2 matches ..0 run function ut:move/bomb_ex/stop