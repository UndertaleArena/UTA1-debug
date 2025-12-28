###Generated from Nebulagen made By Nebulirion
#04/17/2021, 14:41:34

execute store result score #rxo store run data get entity @s Rotation[0] 100

tp @s ~ ~ ~ facing entity @p[tag=dummy_target,limit=1]

execute store result score #rxd store run data get entity @s Rotation[0] 100

scoreboard players operation #rxd store -= #rxo store

execute if score #rxd store matches 500..18000 run scoreboard players add #rxo store 500
execute unless score #rxd store matches -500..18000 run scoreboard players remove #rxo store 500

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #rxo store

#execute unless block ^ ^ ^1 #ut:trans run tp @s ~ ~ ~ ~ ~