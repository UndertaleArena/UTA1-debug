#By Nebulirion

tag @s add block_player

###
execute as @e[tag=atker,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute as @a[tag=atker_melee,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute store result score rx2 store run data get entity @s Rotation[0]

scoreboard players operation rxd store = rx2 store
scoreboard players operation rxd store -= rx1 store

execute if score rxd store matches ..-1 run scoreboard players add rxd store 360
execute if score rxd store matches ..-1 run scoreboard players add rxd store 360
execute if score rxd store matches 360.. run scoreboard players remove rxd store 360
###

tag @s add block_fail
execute if score rxd store matches 100..260 run tag @s remove block_fail

execute if entity @e[tag=atker,tag=!blockable] run tag @s add block_fail

execute if entity @s[tag=block_fail] run function ut:move/counter/fail
execute unless entity @s[tag=block_fail] run function ut:move/block/trigger/2

tag @s remove block_fail
###

tag @s remove block_player