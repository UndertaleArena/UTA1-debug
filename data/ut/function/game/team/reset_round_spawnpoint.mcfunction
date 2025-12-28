#By Nebulirion

scoreboard players operation #this tid = @s tid
execute as @a[tag=playing] if score @s tid = #this tid run tag @s add chosenhere

execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^1 ^ ^ run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^-1 ^ ^ run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^ ^ ^1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^1 ^ ^-1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^-1 ^ ^-1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^1 ^ ^1 run function ut:game/arena/map_spawnpoint_player
execute if entity @a[tag=chosenhere] facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet rotated ~ 0 positioned ^-1 ^ ^1 run function ut:game/arena/map_spawnpoint_player
tp @a[tag=chosenhere] ~ ~ ~ ~ ~

tag @a remove chosenhere
