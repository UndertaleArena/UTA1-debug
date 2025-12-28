#By Nebulirion

scoreboard players reset #spawncount store
scoreboard players reset #teamcount store

scoreboard players set #canstart store 0
execute if score -GameMode game matches 0..6 at @e[tag=arena_mid] if entity @e[tag=arena_sp,distance=..128] if entity @e[tag=arena_low,distance=..128] run scoreboard players set #canstart store 1
execute if score -GameMode game matches 7 at @e[tag=arena_mid] if entity @e[tag=arena_sp,distance=..128] if entity @e[tag=arena_low,distance=..128] if entity @e[tag=team_attack,distance=..128] if entity @e[tag=team_defend,distance=..128] if entity @e[tag=arena_point_a,distance=..128] if entity @e[tag=arena_point_b,distance=..128] run scoreboard players set #canstart store 1
execute at @e[tag=arena_mid] store result score #spawncount store if entity @e[tag=arena_spawn,distance=..128]
execute at @e[tag=arena_mid] store result score #teamcount store if entity @e[tag=team_spawn,distance=..128]

execute if score -GameMode game matches 0.. unless score #spawncount store matches 8.. run scoreboard players set #canstart store 0
execute if score -GameMode game matches 4.. unless score #teamcount store matches 2.. run scoreboard players set #canstart store 0

execute if score #canstart store matches 1 run function ut:game/start
execute unless score #canstart store matches 1 run schedule function ut:game/start_pre 1s