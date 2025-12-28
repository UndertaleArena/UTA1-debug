#By Nebulirion

###
execute as @e[tag=atker,limit=1] store result score rx1 store run data get entity @s Rotation[0]
execute store result score rx2 store run data get entity @s Rotation[0]

scoreboard players operation rxd store = rx2 store
scoreboard players operation rxd store -= rx1 store

execute if score rxd store matches ..-1 run scoreboard players add rxd store 360
execute if score rxd store matches ..-1 run scoreboard players add rxd store 360
execute if score rxd store matches 360.. run scoreboard players remove rxd store 360
###

tag @s add cut_fail
execute if score rxd store matches 100..260 run tag @s remove cut_fail
execute if entity @e[tag=atker,tag=!cutable] run tag @s add cut_fail

scoreboard players set #broken damage 0

execute if entity @s[tag=cut_fail] run function ut:move/counter/fail
execute unless entity @s[tag=cut_fail] as @e[tag=atker,tag=cutable,limit=1] at @s run function ut:move/trident/break/main

scoreboard players operation #broken damage /= 5 const
scoreboard players operation @s cd += #broken damage
function ut:player/cd/change

tag @s remove cut_fail
###