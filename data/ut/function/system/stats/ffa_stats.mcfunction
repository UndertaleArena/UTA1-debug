#By ANTHINY609

tag @a[tag=stats_sort] remove stats_sort
tag @a[tag=all_max_sort] remove all_max_sort

# 設定玩家的最高傷害/被傷害/意志力 的數值
tag @a[team=!] add all_max_sort
scoreboard players operation #all_max ptsd_dmg = @r[tag=all_max_sort] ptsd_dmg
execute if entity @a[tag=all_max_sort] run function ut:system/stats/set_max_d
tag @a[team=!] add all_max_sort
scoreboard players operation #all_max ptsd_dmged = @r[tag=all_max_sort] ptsd_dmged
execute if entity @a[tag=all_max_sort] run function ut:system/stats/set_max_ded
tag @a[team=!] add all_max_sort
scoreboard players operation #all_max ptsd_wdmg = @r[tag=all_max_sort] ptsd_wdmg
execute if entity @a[tag=all_max_sort] run function ut:system/stats/set_max_w

execute as @a[team=!] run tag @s add stats_sort
execute if entity @a[tag=stats_sort] run function ut:system/stats/sort