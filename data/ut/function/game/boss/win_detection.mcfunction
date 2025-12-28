#By Nebulirion

#Boss Mode: If boss died or all other players are dead, Game over

scoreboard players set #player tid 0
scoreboard players operation #player tid = @r[tag=playing] tid
execute as @a if score @s tid = #player tid run tag @s add winner
execute as @a[tag=playing] if score @s tid = #player tid run tag @s add winner_alive
execute as @a[tag=!playing] if score @s tid = #player tid run tag @s add winner_dead

execute unless entity @a[tag=playing,tag=!winner_alive] if entity @a[team=!,tag=!winner] run function ut:game/win
#  

tag @a remove winner
tag @a remove winner_alive
tag @a remove winner_dead