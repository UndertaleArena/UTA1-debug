#By Nebulirion

execute as @a[tag=playing] unless score @s tid = #defend tid run tag @s add winner

execute unless score #ended game matches 1 unless score #endedround game matches 1 run function ut:game/siege/win_detection

tag @a remove winner