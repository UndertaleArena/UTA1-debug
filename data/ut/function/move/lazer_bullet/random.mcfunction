###Generated from Nebulagen made By Nebulirion
#02/19/2021, 21:09:59

execute store result score -x store run data get entity @s UUID[1] 0.000012
execute store result score -y store run data get entity @s UUID[0] 0.000012

execute store result score -X store run data get entity @s Rotation[0] 10000
execute store result score -Y store run data get entity @s Rotation[1] 10000

scoreboard players operation -X store += -x store
scoreboard players operation -Y store += -y store

data modify storage ut:soul Temp set value [0.0f,0.0f]
execute store result storage ut:soul Temp[0] float 0.0001 run scoreboard players get -X store
execute store result storage ut:soul Temp[1] float 0.0001 run scoreboard players get -Y store
data modify entity @s Rotation set from storage ut:soul Temp