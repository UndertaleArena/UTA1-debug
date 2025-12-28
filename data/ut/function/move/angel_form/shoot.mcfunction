#By Nebulirion

scoreboard players operation -shoot store = @s life

scoreboard players set -mir store 1
execute if entity @s[tag=wing_mirror] run scoreboard players set -mir store 2

scoreboard players operation -shoot store %= 2 const

execute if score -shoot store matches 1 at @s[tag=!wing_mirror] positioned ^1 ^.8 ^.5 rotated ~2 ~ run function ut:move/angel_shot/cast
execute if score -shoot store matches 1 at @s[tag=wing_mirror] positioned ^-1 ^.8 ^.5 rotated ~-2 ~ run function ut:move/angel_shot/cast
