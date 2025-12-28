#By Nebulirion

execute at @s run summon minecraft:area_effect_cloud ~ ~.5 ~ {Tags: ["summon","laser_tester"]}
execute as @e[type=area_effect_cloud,tag=summon,limit=1] run function ut:map/core/laser_player_aec
data modify entity @e[type=area_effect_cloud,tag=summon,limit=1] Pos[1] set from entity @s Pos[1]
execute positioned as @e[type=area_effect_cloud,tag=summon,limit=1] run tp @s ~ ~ ~
kill @e[tag=laser_tester]