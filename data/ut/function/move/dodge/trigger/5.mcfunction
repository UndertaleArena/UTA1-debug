#By Nebulirion

scoreboard players remove #dodgeWallCheck plt2 1

execute unless block ~ ~ ~ #ut:ray_trans run scoreboard players set #dodgeAgain plt2 1

execute unless score #dodgeAgain plt2 matches 1 if score #dodgeWallCheck plt2 matches 1.. unless entity @a[tag=dodge_player,limit=1,distance=..1.75] positioned ^ ^ ^.75 run function ut:move/dodge/trigger/5