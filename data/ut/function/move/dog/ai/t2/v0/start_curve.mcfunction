#By Nebulirion

####RANDOMIZE
scoreboard players set min random -3000
scoreboard players set max random 3000

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score -x store run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

scoreboard players set min random -6000
scoreboard players set max random -3000

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score -y store run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

execute store result score -X store run data get entity @s Rotation[0] 100
execute store result score -Y store run data get entity @s Rotation[1] 100

scoreboard players operation -X store += -x store
scoreboard players operation -Y store += -y store

data modify storage ut:soul Temp set value [0.0f,0.0f]
execute store result storage ut:soul Temp[0] float 0.01 run scoreboard players get -X store
execute store result storage ut:soul Temp[1] float 0.01 run scoreboard players get -Y store
data modify entity @s Rotation set from storage ut:soul Temp

######ACTUAL LOOP
scoreboard players set #curvelength dog 24

scoreboard players operation #curvestrength dog = -Y store
scoreboard players remove #curvestrength dog 9000
scoreboard players operation #curvestrength dog /= 100 const
scoreboard players operation #curvestrength dog /= 12 const
scoreboard players operation #curvestrength dog *= -1 const

execute at @s positioned ~ ~1 ~ positioned ^ ^ ^-0.5 run function ut:move/dog/ai/t2/v0/curve_loop

scoreboard players remove #curvetry dog 1

execute if score #foundtarget dog matches 0 run tp @s ~ ~ ~ ~ ~
execute if score #foundtarget dog matches 0 if score #curvetry dog matches 1.. run function ut:move/dog/ai/t2/v0/start_curve

