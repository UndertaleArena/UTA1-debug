#By Nebulirion and Ds_Squid

execute if score #true_damage damage matches 100.. run particle minecraft:damage_indicator ~ ~.8 ~ 0.3 0.5 0.3 0 1 normal @a[scores={Q=1..}]
execute if score #true_damage damage matches 100.. run scoreboard players remove #true_damage damage 100
execute if score #true_damage damage matches 100.. run function ut:move/hit/particle

execute if score #shield_damage damage matches 100.. run particle block{block_state:"minecraft:light_blue_stained_glass"} ~ ~.8 ~ 0.3 0.5 0.3 0 8 normal @a[scores={Q=1..}]
execute if score #shield_damage damage matches 100.. run scoreboard players remove #shield_damage damage 100
execute if score #shield_damage damage matches 100.. run function ut:move/hit/particle