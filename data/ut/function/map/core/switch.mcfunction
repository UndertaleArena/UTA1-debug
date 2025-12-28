#By Nebulirion

scoreboard players set #core_map timer 0

execute if block ~ ~ ~-1 light_blue_stained_glass run scoreboard players set #core_state map 0
execute unless block ~ ~ ~-1 light_blue_stained_glass run scoreboard players set #core_state map 1
execute if score #core_state map matches 1 run setblock ~ ~ ~-1 light_blue_stained_glass
execute unless score #core_state map matches 1 run setblock ~ ~ ~-1 black_stained_glass

execute positioned 2789.5 36.5 1305.5 run function ut:map/core/switch_positioned