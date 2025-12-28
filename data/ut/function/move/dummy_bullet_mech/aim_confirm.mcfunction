###Generated from Nebulagen made By Nebulirion
#04/17/2021, 14:41:34

execute store result score #rxo store run data get entity @s Rotation[0] 100
execute store result score #ryo store run data get entity @s Rotation[1] 100

tp @s ~ ~ ~ facing entity @a[tag=autoaim_target,limit=1] eyes

execute store result score #rxd store run data get entity @s Rotation[0] 100
execute store result score #ryd store run data get entity @s Rotation[1] 100

scoreboard players operation #rxd store -= #rxo store
scoreboard players operation #ryd store -= #ryo store

execute if score #rxd store matches 500..18000 run scoreboard players add #rxo store 500
execute unless score #rxd store matches -500..18000 run scoreboard players remove #rxo store 500
execute if score #ryd store matches 500.. at @s run scoreboard players add #ryo store 500
execute unless score #ryd store matches -500.. at @s run scoreboard players remove #ryo store 500

scoreboard players set @s speed 4
execute if score #rxd store matches -500..499 if score #ryd store matches -500..499 run scoreboard players add @s speed 5

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #rxo store
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #ryo store