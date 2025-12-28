#By Nebulirion

execute if score -GameMode game matches 7 if entity @s[tag=capturing] if block ~ ~ ~ #minecraft:carpets run function ut:game/siege/point/display/copper/carpet
execute if score -GameMode game matches 7 unless entity @s[tag=capturing] if block ~ ~ ~ #ut:trans run function ut:game/siege/point/display/copper/carpet
execute unless score -GameMode game matches 7 if block ~ ~ ~ #minecraft:carpets run function ut:game/siege/point/display/copper/restore
