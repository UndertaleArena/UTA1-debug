#By Nebulirion

tp @e[type=marker,tag=maze_police,limit=1] ~ 153 ~

####NEWPOS
execute store result score -new maze_x run data get entity @s Pos[0] 100
scoreboard players operation -old maze_x = @s maze_x
scoreboard players operation -old maze_x /= 100 const
scoreboard players operation -dif maze_x = -new maze_x
scoreboard players operation -dif maze_x /= 100 const
scoreboard players operation -dif maze_x -= -old maze_x

execute store result score -new maze_z run data get entity @s Pos[2] 100
scoreboard players operation -old maze_z = @s maze_z
scoreboard players operation -old maze_z /= 100 const
scoreboard players operation -dif maze_z = -new maze_z
scoreboard players operation -dif maze_z /= 100 const
scoreboard players operation -dif maze_z -= -old maze_z

####XXXX
execute store result entity @e[type=marker,tag=maze_police,limit=1] Pos[2] double 0.01 run scoreboard players get @s maze_z 
execute unless score -dif maze_x matches 0 at @e[type=marker,tag=maze_police,limit=1] run function ut:lobby/minis/maze/enter_block_x

####ZZZZ
data modify entity @e[type=marker,tag=maze_police,limit=1] Pos[2] set from entity @s Pos[2]
execute unless score -dif maze_z matches 0 run function ut:lobby/minis/maze/enter_block_z

####END
scoreboard players operation @s maze_x = -new maze_x
scoreboard players operation @s maze_z = -new maze_z

scoreboard players set -dif maze_z 0
scoreboard players set -dif maze_x 0