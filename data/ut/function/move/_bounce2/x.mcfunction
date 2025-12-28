#By Nebulirion
scoreboard players set -bounced store 1

execute store result score -rot_x store run data get entity @s Rotation[0] 10000
scoreboard players operation -rot_x store *= -1 const

execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get -rot_x store