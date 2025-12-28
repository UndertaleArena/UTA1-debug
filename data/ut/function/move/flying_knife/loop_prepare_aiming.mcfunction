###Generated from Nebulagen made By Nebulirion
#04/17/2021, 14:41:34

#execute store result score #rxo store run data get entity @s Rotation[0] 100
execute store result score #ryo store run data get entity @s Rotation[1] 100

tp @s ^-0.5 ^-0.3 ^1 ~-.5 ~

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