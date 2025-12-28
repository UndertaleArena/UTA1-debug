#By Nebulirion

data modify entity @s CustomName set value '""'

scoreboard players add #index tbid 1

scoreboard players set @s gamescore 0
scoreboard players set @s gamescoresmall 0

scoreboard players operation #this tid = @r[tag=tobechosen] tid
scoreboard players operation @s tid = #this tid
scoreboard players operation @s tbid = #index tbid
function ut:system/team/join

execute as @a[tag=tobechosen] if score @s tid = #this tid run tag @s add chosenhere

scoreboard players operation @a[tag=chosenhere] tbid = #index tbid

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
tag @a remove chosenhere
