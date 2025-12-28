#By Nebulirion

execute at @s positioned ^ ^ ^0.4 if block ^ ^ ^0.5 #ut:dog_trans run tp @s ~ ~ ~ ~ ~8
execute at @s positioned ^ ^ ^0.4 unless block ^ ^ ^0.5 #ut:dog_trans positioned ^ ^ ^-0.5 run function ut:move/dog/ai/t3/end

###DISPLAY
function ut:move/dog/display/face

###VOID CHECK
execute store result score #dog y_pos run data get entity @s Pos[1] 100
execute if score #dog y_pos <= -LowPos y_pos at @s run function ut:move/dog/ai/t5/v0/start_em
execute if block ~ ~ ~ light[level=0,waterlogged=true] run function ut:move/dog/ai/t5/v0/start_em
execute if block ~ ~-1 ~ end_gateway run function ut:move/dog/ai/t5/v0/start_em