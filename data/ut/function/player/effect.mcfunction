#By Nebulirion

effect clear @s
effect give @s minecraft:jump_boost infinite 0 true
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:saturation infinite 0 true

execute if score -InGame game matches 1 at @s if entity @e[tag=arena_mid,tag=arena_nightvision,scores={maplock=1}] run effect give @s minecraft:night_vision infinite 27 true
execute if score -InGame game matches 0 if entity @s[tag=playing_tut] run effect give @s minecraft:night_vision infinite 27 true
execute if score -InGame game matches 0 run effect give @s minecraft:weakness infinite 87 true

execute if score @s N matches 1 run effect give @s minecraft:night_vision infinite 87 true
execute if score @s N matches -1 run effect clear @s night_vision