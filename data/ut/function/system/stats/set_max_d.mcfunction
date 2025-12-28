#By ANTHINY609

execute if score @s ptsd_dmg > #all_max ptsd_dmg run scoreboard players operation #all_max ptsd_dmg = @s ptsd_dmg

tag @s remove all_max_sort
execute if entity @a[tag=all_max_sort] as @r[tag=all_max_sort] run function ut:system/stats/set_max_d