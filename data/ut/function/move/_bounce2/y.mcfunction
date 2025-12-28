#By Nebulirion

scoreboard players set -bounced store 1

execute store result score -rot_y store run data get entity @s Rotation[1] 10000
scoreboard players operation -rot_y store *= -1 const
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get -rot_y store