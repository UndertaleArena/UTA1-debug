#By Nebulirion

 
execute as @a[tag=playing] if score @s tid = @e[tag=arena_point_b,scores={maplock=1},limit=1] tid run tag @s add winner

execute unless score #ended game matches 1 unless score #endedround game matches 1 run function ut:game/siege/win_detection

tag @a remove winner