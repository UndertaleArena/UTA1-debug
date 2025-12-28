#By Nebulirion

#General: If only one team, it wins.

scoreboard players set #player tid 9
scoreboard players operation #player tid = @r[tag=playing] tid
execute as @a if score @s tid = #player tid run tag @s add test_team

execute if entity @a[tag=test_team] unless entity @a[tag=playing,tag=!test_team] unless score #endingsoon game matches 1 run function ut:game/win_detection/one_team
execute unless entity @a[tag=test_team] run function ut:game/win_detection/no_player

tag @a remove test_team