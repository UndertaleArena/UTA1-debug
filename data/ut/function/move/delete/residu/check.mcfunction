tellraw @a[tag=debug.delete_residu] ["=======\nCalculation status: "]
tellraw @a[tag=debug.delete_residu] ["Center: [",{"score":{"objective":"x_pos","name":"#resiTarget"}},", ",{"score":{"objective":"y_pos","name":"#resiTarget"}},", ",{"score":{"objective":"z_pos","name":"#resiTarget"}},"]"]
# setup this residu position
execute store result score #resiDis x_pos run data get entity @s Pos[0] 1
execute store result score #resiDis y_pos run data get entity @s Pos[1] 1
execute store result score #resiDis z_pos run data get entity @s Pos[2] 1
tellraw @a[tag=debug.delete_residu] ["Residu Position: [",{"score":{"objective":"x_pos","name":"#resiDis"}},", ",{"score":{"objective":"y_pos","name":"#resiDis"}},", ",{"score":{"objective":"z_pos","name":"#resiDis"}},"]"]
# calculate as offset
scoreboard players operation #resiDis x_pos -= #resiTarget x_pos
scoreboard players operation #resiDis y_pos -= #resiTarget y_pos
scoreboard players operation #resiDis z_pos -= #resiTarget z_pos
tellraw @a[tag=debug.delete_residu] ["Offset: [",{"score":{"objective":"x_pos","name":"#resiDis"}},", ",{"score":{"objective":"y_pos","name":"#resiDis"}},", ",{"score":{"objective":"z_pos","name":"#resiDis"}},"]"]
# move to ram place
scoreboard players operation #resiDis x_pos += #resiPos x_pos
scoreboard players operation #resiDis y_pos += #resiPos y_pos
scoreboard players operation #resiDis z_pos += #resiPos z_pos
tellraw @a[tag=debug.delete_residu] ["Final: [",{"score":{"objective":"x_pos","name":"#resiDis"}},", ",{"score":{"objective":"y_pos","name":"#resiDis"}},", ",{"score":{"objective":"z_pos","name":"#resiDis"}},"]\n======="]

# let checker dance
## get origin for later restore
data modify storage ut:temp PosOrigin set from entity @s Pos
## setup target position data
data modify storage ut:temp PosTarget set value [0.0d,1.0d,0.0d]
execute store result storage ut:temp PosTarget[0] double 1 run scoreboard players get #resiDis x_pos
execute store result storage ut:temp PosTarget[1] double 1 run scoreboard players get #resiDis y_pos
execute store result storage ut:temp PosTarget[2] double 1 run scoreboard players get #resiDis z_pos
data modify entity @s Pos set from storage ut:temp PosTarget
## we're going to dance
tellraw @a[tag=debug.delete_residu] ["[",{"selector":"@s"},"] Og Pos: ",{"nbt":"PosOrigin","storage":"ut:temp"}]
tellraw @a[tag=debug.delete_residu] ["[",{"selector":"@s"},"] New Pos: ",{"nbt":"Pos","entity":"@s"}]
execute at @s if block ~ ~ ~ infested_chiseled_stone_bricks run function ut:move/delete/residu/cleaner
tellraw @a[tag=debug.delete_residu] "======= END ======="
## restore position
data modify entity @s Pos set from storage ut:temp PosOrigin

# data reset
## scores
scoreboard players reset #resiDis x_pos
scoreboard players reset #resiDis y_pos
scoreboard players reset #resiDis z_pos
## storage
data remove storage ut:temp PosOrigin
data remove storage ut:temp PosTarget
## tag
tag @s remove tmp.dog_residu