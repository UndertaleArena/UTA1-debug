#By Nebulirion

execute unless data entity @s SelectedItem.components."minecraft:custom_data".chaos_buster run function ut:move/chaos_buster/stop

scoreboard players remove @s plt1 1
scoreboard players add @s plt1b 1


execute if score @s plt1b matches 2.. anchored eyes positioned ^-.25 ^-.1 ^.5 facing ^.25 ^ ^20 run function ut:move/buster_bullet/cast
execute if score @s plt1b matches 2.. run scoreboard players set @s plt1b 0

execute if score @s plt1 matches ..0 run function ut:move/chaos_buster/stop