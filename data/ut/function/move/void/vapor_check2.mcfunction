
#Compare
execute if score #self y_pos < -LowPos y_pos if block ~ ~-.5 ~ #ut:void_vapor run scoreboard players set #isVoid store 1
execute if score #isVoid store matches 1.. if block ~ ~-.5 ~ #ut:void_vapor_lava run scoreboard players set #isVoid store 2
execute if block ~ ~-.5 ~ end_gateway run scoreboard players set #isVoid store 3
execute if score #isVoid store matches 1.. run function ut:move/void/vapor
