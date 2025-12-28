###Generated from Nebulagen made By Nebulirion
#09/22/2021, 02:12:17

execute if score @s rot matches ..-1800000 run scoreboard players add @s rot 3600000
execute if score @s rot matches 1800001.. run scoreboard players remove @s rot 3600000

execute unless score @s rot matches -1799999..1800000 run function ut:move/angel_shot/_aim/fixrot