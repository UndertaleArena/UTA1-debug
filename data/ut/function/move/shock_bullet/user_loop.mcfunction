#By Nebulirion
execute unless data entity @s SelectedItem.components."minecraft:custom_data".shock_bullet run function ut:move/shock_bullet/stop

scoreboard players remove @s plt2 1
execute if score @s plt2 matches 4 run scoreboard players operation @s plt2b = #aid aid
scoreboard players operation #org aid = #aid aid
scoreboard players operation #pilot aid = @s plt2b
scoreboard players add #pilot aid 1

execute as @e[type=armor_stand,tag=shock_bullet] if score @s aid = #pilot aid run tag @s add bullet_pilot
execute unless entity @e[type=armor_stand,tag=bullet_pilot,limit=1] run tag @s add bullet_pilot

scoreboard players operation #aid aid = #org aid

execute if score @s plt2 matches 4 anchored eyes positioned ^.2 ^-.1 ^ rotated as @e[tag=bullet_pilot,limit=1] rotated ~-10 ~ run function ut:move/shock_bullet/cast
execute if score @s plt2 matches 3 anchored eyes positioned ^-.1 ^-.1 ^ rotated as @e[tag=bullet_pilot,limit=1] rotated ~5 ~ run function ut:move/shock_bullet/cast
execute if score @s plt2 matches 2 anchored eyes positioned ^-.2 ^-.1 ^ rotated as @e[tag=bullet_pilot,limit=1] rotated ~10 ~ run function ut:move/shock_bullet/cast
execute if score @s plt2 matches 1 anchored eyes positioned ^-.3 ^-.1 ^ rotated as @e[tag=bullet_pilot,limit=1] rotated ~15 ~ run function ut:move/shock_bullet/cast
execute if score @s plt2 matches 0 anchored eyes positioned ^-.4 ^-.1 ^ rotated as @e[tag=bullet_pilot,limit=1] rotated ~20 ~ run function ut:move/shock_bullet/cast

tag @e remove bullet_pilot

execute if score @s plt2 matches ..0 run function ut:move/shock_bullet/stop