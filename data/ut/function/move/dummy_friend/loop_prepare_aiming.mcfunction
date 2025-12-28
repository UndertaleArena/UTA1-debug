###Generated from Nebulagen made By Nebulirion
#04/17/2021, 14:41:34

#execute store result score #rxo store run data get entity @s Rotation[0] 100
execute store result score #ryo store run data get entity @s Rotation[1] 100

execute if score @s plt2b matches 1 run tp @s ^ ^-0.5 ^1.2 ~ ~
execute if score @s plt2b matches 2 run tp @s ^.7 ^-0.5 ^1.2 ~ ~
execute if score @s plt2b matches 3 run tp @s ^1.4 ^-0.5 ^1.2 ~ ~
execute if score @s plt2b matches 4 run tp @s ^2.1 ^-0.5 ^1.2 ~ ~
execute if score @s plt2b matches 5 run tp @s ^2.8 ^-0.5 ^1.2 ~ ~
execute if score @s plt2b matches 6 run tp @s ^3.5 ^-0.5 ^1.2 ~ ~
execute if score @s plt2b matches 7 run tp @s ^4.2 ^-0.5 ^1.2 ~ ~
execute if score @s plt2b matches 8 run tp @s ^4.9 ^-0.5 ^1.2 ~ ~
execute if score @s plt2b matches 9 run tp @s ^5.6 ^-0.5 ^1.2 ~ ~

execute positioned as @s positioned ~ ~.93 ~ unless block ~ ~ ~ #ut:trans positioned ~ ~-.93 ~ run tp @s ^ ^ ^-.4
execute positioned as @s positioned ~ ~.93 ~ unless block ~ ~ ~ #ut:trans positioned ~ ~-.93 ~ run tp @s ^ ^ ^-.4

execute store result score #rxt store run data get entity @s Rotation[0] 100
execute store result score #ryt store run data get entity @s Rotation[1] 100

scoreboard players operation #ryd store = #ryt store
scoreboard players operation #ryd store -= #ryo store

#execute if score #rxd store matches 1500..18000 run scoreboard players add #rxo store 1500
#execute unless score #rxd store matches -1500..18000 run scoreboard players remove #rxo store 1500
execute unless score #ryd store matches ..450 at @s run scoreboard players add #ryo store 450
execute unless score #ryd store matches -450.. at @s run scoreboard players remove #ryo store 450
execute if score #ryd store matches -450..450 at @s run scoreboard players operation #ryo store = #ryt store

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #rxt store
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #ryo store