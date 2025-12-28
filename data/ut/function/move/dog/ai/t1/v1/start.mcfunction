#By Nebulirion

scoreboard players set @s life2 0

scoreboard players set @s dogait 1
scoreboard players set @s dogaiv 1

###
execute store result score @s x_lastground run data get entity @s Pos[0] 100
execute store result score @s y_lastground run data get entity @s Pos[1] 100
execute store result score @s z_lastground run data get entity @s Pos[2] 100

execute store result score #rot store run data get entity @s Rotation[0]
data modify entity @s Rotation[1] set value 0.0f

#tellraw @a ["og:",{"score":{"name":"#rot","objective":"store"}}]

execute if score #rot store matches 360.. run scoreboard players remove #rot store 360
execute if score #rot store matches ..-1 run scoreboard players add #rot store 360
execute if score #rot store matches ..-1 run scoreboard players add #rot store 360

#tellraw @a ["mod:",{"score":{"name":"#rot","objective":"store"}}]

execute if score #rot store matches ..45 at @s align x run tp @s ~.5 ~ ~ 180 0
execute if score #rot store matches 46..135 at @s align z run tp @s ~ ~ ~.5 -90 0
execute if score #rot store matches 136..225 at @s align x run tp @s ~.5 ~ ~ 0 0
execute if score #rot store matches 226..315 at @s align z run tp @s ~ ~ ~.5 90 0
execute if score #rot store matches 316.. at @s align x run tp @s ~.5 ~ ~ 180 0

###RANDOMIZE COUNTER
scoreboard players set min random 32
scoreboard players set max random 54

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score @s dogaic run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

execute at @s if block ~ ~-1 ~ #ut:dog_trans run function ut:move/dog/ai/t5/v0/start