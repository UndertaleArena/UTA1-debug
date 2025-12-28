#By Nebulirion

execute if score #true_damage damage matches 100.. run particle minecraft:damage_indicator ~ ~.8 ~ 0.3 0.5 0.3 0 1 normal @a[scores={Q=1..}]
scoreboard players remove #true_damage damage 100
execute if score #true_damage damage matches 100.. run function ut:move/hit/particle