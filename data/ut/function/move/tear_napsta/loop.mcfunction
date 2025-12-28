#By Nebulirion

execute unless data entity @s SelectedItem.components."minecraft:custom_data".tear run function ut:move/tear_napsta/stop

scoreboard players add @s unloadtime 1
scoreboard players add @s mpcooldown 1
scoreboard players remove @s plt1 1
scoreboard players add @s plt1b 1

execute if score @s plt1b matches 2.. anchored eyes if score @s plt1c matches 1 positioned ^0.3 ^.3 ^.5 run function ut:move/tear/cast
execute if score @s plt1b matches 2.. anchored eyes if score @s plt1c matches 0 positioned ^-.3 ^.3 ^.5 run function ut:move/tear/cast
execute if score @s plt1b matches 2.. run scoreboard players add @s plt1c 1
execute if score @s plt1b matches 2.. if score @s plt1c matches 2 run scoreboard players set @s plt1c 0
execute if score @s plt1b matches 2.. run scoreboard players set @s plt1b 0

execute if score @s plt1 matches ..0 run function ut:move/tear_napsta/stop