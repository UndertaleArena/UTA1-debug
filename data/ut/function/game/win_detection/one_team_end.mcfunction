#By Nebulirion

scoreboard players set #endingsoon game 0

scoreboard players set #player tid 0
scoreboard players operation #player tid = @r[tag=playing] tid
execute as @a if score @s tid = #player tid run tag @s add winner

execute unless score #ended game matches 1 unless entity @a[tag=playing,tag=!winner] if entity @a[tag=winner] run function ut:game/win

tag @a remove winner