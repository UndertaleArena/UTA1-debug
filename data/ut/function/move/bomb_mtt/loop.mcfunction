#By Nebulirion

scoreboard players add @s plt2b 1
execute if score @s plt2b matches 2.. run playsound minecraft:block.piston.extend player @a ~ ~ ~ .2 1.3
execute if score @s plt2b matches 2.. run scoreboard players reset @s plt2b

particle dust{color:[0.941,0.51,0.11],scale:1.5} ~ ~ ~ 0.15 0 0.15 0 4 force @a[scores={Q=2..}]
particle dust{color:[0.914,0.133,0.063],scale:1.2} ~ ~ ~ 0.15 0 0.15 0 6 normal @a[scores={Q=1..}]
particle large_smoke ~ ~ ~ 0.3 0.2 0.3 0 1 normal @a[scores={Q=1..}]

execute unless data entity @s SelectedItem.components."minecraft:custom_data".bomb_mtt run function ut:move/bomb_mtt/stop

effect give @s levitation 2 3 true
scoreboard players add @s[tag=!effect_shocked] cdcooldown 1

execute if score @s cddis matches ..99 run scoreboard players add @s cddis 10
execute if score @s cddis matches 100.. run scoreboard players operation @s cd = @s cdmax

scoreboard players remove @s plt2 1

execute if score @s plt2 matches ..0 run function ut:move/bomb_mtt/stop