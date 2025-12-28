#By Nebulirion

scoreboard players set #curvetry dog 3
scoreboard players set #foundtarget dog 0

tp @s ~ ~ ~ ~ ~

execute if score #foundtarget dog matches 0 if score #curvetry dog matches 1.. at @s run function ut:move/dog/ai/t2/v0/start_curve

execute if score #foundtarget dog matches 1 run function ut:move/dog/ai/t2/start

#execute if score #foundtarget dog matches 0 run function ut:move/dog/ai/t2/v0/end