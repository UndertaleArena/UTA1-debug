#By ANTHINY609

execute if score @s ptsd_dmg > #max ptsd_dmg run scoreboard players operation #max ptsd_dmg = @s ptsd_dmg

tag @s remove max_sort
execute if entity @a[tag=max_sort] as @r[tag=max_sort] run function ut:system/stats/max_d