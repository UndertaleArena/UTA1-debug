#By Nebulirion

#Arena Mode: If only one team, it wins.

scoreboard players set #player tid 0
scoreboard players operation #player tid = @r[tag=playing] tid

execute as @a if score @s tid = #player tid run tag @s add winner

execute unless entity @a[tag=playing,tag=!winner] if entity @a[team=!,tag=!winner] run function ut:game/win
#  

tag @a remove winner