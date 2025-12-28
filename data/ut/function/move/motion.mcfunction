#By Nebulirion

execute store result score #this x_pos run data get entity @s Pos[0] 1000
execute store result score #this y_pos run data get entity @s Pos[1] 1000
execute store result score #this z_pos run data get entity @s Pos[2] 1000
scoreboard players operation #this x_pos += @s x_pos
scoreboard players operation #this y_pos += @s y_pos
scoreboard players operation #this z_pos += @s z_pos

data modify storage ut:soul Temp set value [0.0d,0.0d,0.0d]
execute store result storage ut:soul Temp[0] double 0.001 run scoreboard players get #this x_pos
execute store result storage ut:soul Temp[1] double 0.001 run scoreboard players get #this y_pos
execute store result storage ut:soul Temp[2] double 0.001 run scoreboard players get #this z_pos

data modify entity @s Pos set from storage ut:soul Temp