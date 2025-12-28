#By ANTHINY609


tag @a[tag=stats_sort] add max_sort
scoreboard players operation #max ptsd_dmg = @r[tag=max_sort] ptsd_dmg
execute if entity @a[tag=max_sort] as @r[tag=max_sort] run function ut:system/stats/max_d

execute as @a[tag=stats_sort] if score @s ptsd_dmg = #max ptsd_dmg run function ut:system/stats/stats_message
execute if entity @a[tag=stats_sort] run function ut:system/stats/sort