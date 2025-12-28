#By Nebulirion

scoreboard players set #chosen tid 0
scoreboard players operation #chosen tid = @r[tag=tobechosen] tid
scoreboard players operation @s tid = #chosen tid

execute as @a[tag=tobechosen] if score @s tid = #chosen tid run tag @s add chosenhere

execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^1 ^ ^ run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^-1 ^ ^ run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^ ^ ^1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^1 ^ ^-1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^-1 ^ ^-1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^1 ^ ^1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^-1 ^ ^1 run function ut:game/arena/map_spawnpoint_player
tp @a[tag=chosenhere] ~ ~ ~ ~ ~

tag @a[tag=chosenhere] remove tobechosen
tag @a[tag=chosenhere] remove chosenhere
tag @s remove empty_spawn