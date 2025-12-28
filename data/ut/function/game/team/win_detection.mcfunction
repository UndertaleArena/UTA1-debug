#By Nebulirion

#Team Mode: If only one team, it wins.

scoreboard players set #player tid 0
scoreboard players operation #player tid = @r[tag=playing,tag=!respawning] tid

execute as @a if score @s tid = #player tid run tag @s add winner

execute unless entity @a[tag=playing,tag=!respawning,tag=!winner] if entity @a[tag=playing,tag=!respawning,tag=winner] if entity @a[tag=playing,tag=!winner] as @e[tag=team_spawn,scores={maplock=1}] if score @s tid = #player tid unless score #ended game matches 1 unless score #endedround game matches 1 run function ut:game/team/win_round
execute unless entity @a[tag=playing,tag=!respawning] unless score #ended game matches 1 unless score #endedround game matches 1 run function ut:game/team/tie_round

tag @a remove winner