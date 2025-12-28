# check block state

scoreboard players set #canBridge dog -1
execute if block ~ ~ ~ light[waterlogged=false,level=0] run scoreboard players set #canBridge dog 0
execute if block ~ ~ ~ light[waterlogged=false,level=1] run scoreboard players set #canBridge dog 1
execute if block ~ ~ ~ light[waterlogged=false,level=2] run scoreboard players set #canBridge dog 2
execute if block ~ ~ ~ light[waterlogged=false,level=3] run scoreboard players set #canBridge dog 3
execute if block ~ ~ ~ light[waterlogged=false,level=4] run scoreboard players set #canBridge dog 4
execute if block ~ ~ ~ light[waterlogged=false,level=5] run scoreboard players set #canBridge dog 5
execute if block ~ ~ ~ light[waterlogged=false,level=6] run scoreboard players set #canBridge dog 6
execute if block ~ ~ ~ light[waterlogged=false,level=7] run scoreboard players set #canBridge dog 7
execute if block ~ ~ ~ light[waterlogged=false,level=8] run scoreboard players set #canBridge dog 8
execute if block ~ ~ ~ light[waterlogged=false,level=9] run scoreboard players set #canBridge dog 9
execute if block ~ ~ ~ light[waterlogged=false,level=10] run scoreboard players set #canBridge dog 10
execute if block ~ ~ ~ light[waterlogged=false,level=11] run scoreboard players set #canBridge dog 11
execute if block ~ ~ ~ light[waterlogged=false,level=12] run scoreboard players set #canBridge dog 12
execute if block ~ ~ ~ light[waterlogged=false,level=13] run scoreboard players set #canBridge dog 13
execute if block ~ ~ ~ light[waterlogged=false,level=14] run scoreboard players set #canBridge dog 14
execute if block ~ ~ ~ light[waterlogged=false,level=15] run scoreboard players set #canBridge dog 15
execute if block ~ ~ ~ air run scoreboard players set #canBridge dog 16

# check if bridging
execute if score #canBridge dog matches 0.. run function ut:move/dog/ai/t1/v1/bridge
scoreboard players reset #canBridge dog