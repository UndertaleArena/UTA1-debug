# tp to storage position
## because main function do not require any further setup about location, so this can do no restoring
tp @s ~ 1 ~
# get current position data
execute store result score #resiPos x_pos run data get entity @s Pos[0] 1
scoreboard players set #resiPos y_pos 1
execute store result score #resiPos z_pos run data get entity @s Pos[2] 1
# do alignment to yes
scoreboard players add #resiPos x_pos 1
scoreboard players add #resiPos z_pos 1

# get "target" data for offset calculation
execute store result score #resiTarget x_pos run data get entity @s data.Target[0] 1
execute store result score #resiTarget y_pos run data get entity @s data.Target[1] 1
execute store result score #resiTarget z_pos run data get entity @s data.Target[2] 1
# do target pos alignment
scoreboard players remove #resiTarget x_pos 3
scoreboard players remove #resiTarget z_pos 3

# do main check
say founded residu : @e[tag=tmp.dog_residu] 
execute as @e[tag=tmp.dog_residu] run function ut:move/delete/residu/check

# score reset
scoreboard players reset #resiPos x_pos
scoreboard players reset #resiPos y_pos
scoreboard players reset #resiPos z_pos
scoreboard players reset #resiTarget x_pos
scoreboard players reset #resiTarget y_pos
scoreboard players reset #resiTarget z_pos
