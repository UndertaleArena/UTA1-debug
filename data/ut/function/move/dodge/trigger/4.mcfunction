#By Nebulirion

execute unless block ~ ~-1 ~ #ut:ray_trans if block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans run scoreboard players set #dodgeAgain plt2 0
execute unless block ~ ~-1 ~ #ut:ray_trans if block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans run tp @s ~ ~ ~
execute unless block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans if block ~ ~2 ~ #ut:ray_trans run scoreboard players set #dodgeAgain plt2 0
execute unless block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans if block ~ ~2 ~ #ut:ray_trans run tp @s ~ ~1 ~
execute unless block ~ ~ ~ #ut:ray_trans unless block ~ ~1 ~ #ut:ray_trans if block ~ ~2 ~ #ut:ray_trans if block ~ ~3 ~ #ut:ray_trans run scoreboard players set #dodgeAgain plt2 0
execute unless block ~ ~ ~ #ut:ray_trans unless block ~ ~1 ~ #ut:ray_trans if block ~ ~2 ~ #ut:ray_trans if block ~ ~3 ~ #ut:ray_trans run tp @s ~ ~2 ~
execute if block ~ ~ ~ #ut:ray_trans if block ~ ~-1 ~ #ut:ray_trans unless block ~ ~-2 ~ #ut:ray_trans run scoreboard players set #dodgeAgain plt2 0
execute if block ~ ~ ~ #ut:ray_trans if block ~ ~-1 ~ #ut:ray_trans unless block ~ ~-2 ~ #ut:ray_trans run tp @s ~ ~-1 ~
execute if block ~ ~ ~ #ut:ray_trans if block ~ ~-1 ~ #ut:ray_trans if block ~ ~-2 ~ #ut:ray_trans unless block ~ ~-3 ~ #ut:ray_trans run scoreboard players set #dodgeAgain plt2 0
execute if block ~ ~ ~ #ut:ray_trans if block ~ ~-1 ~ #ut:ray_trans if block ~ ~-2 ~ #ut:ray_trans unless block ~ ~-3 ~ #ut:ray_trans run tp @s ~ ~-2 ~

scoreboard players set #dodgeWallCheck plt2 20
execute if score #dodgeAgain plt2 matches 0 at @s positioned ~ ~1.5 ~ facing entity @a[tag=dodge_player,limit=1] eyes positioned ^ ^ ^.75 run function ut:move/dodge/trigger/5