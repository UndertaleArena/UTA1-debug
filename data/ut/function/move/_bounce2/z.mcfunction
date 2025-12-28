#By Nebulirion

scoreboard players set -bounced store 1

execute store result score -old store run data get entity @s Rotation[0] 10000
scoreboard players set -new store 1800000
scoreboard players operation -new store -= -old store

execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get -new store