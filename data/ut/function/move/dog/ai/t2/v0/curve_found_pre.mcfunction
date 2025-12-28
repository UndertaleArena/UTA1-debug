#By Nebulirion

scoreboard players set #foundtarget dog 1

execute align xyz run tp @s ~.5 ~.5 ~.5
execute store result score #check y_pos run data get entity @s Pos[1] 100

execute if score #check y_pos <= -LowPos y_pos run scoreboard players set #foundtarget dog 0
execute if block ~ ~-1 ~ end_gateway run scoreboard players set #foundtarget dog 0
execute if block ~ ~ ~ light[level=0,waterlogged=true] run scoreboard players set #foundtarget dog 0

execute if score #foundtarget dog matches 1 run function ut:move/dog/ai/t2/v0/curve_found