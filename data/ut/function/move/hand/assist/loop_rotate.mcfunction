#Original By Nebulirion, SY edited

#teleport to user
execute at @a[tag=hand_user,limit=1] run tp @s ~ ~ ~

#rotation get
execute store result score #rot store run data get entity @s Rotation[0] 1

#rotation calculate(posclk)
execute if score #suc store matches 0 run scoreboard players add #rot store 3
execute if score #suc store matches 0 if score #rot store matches 180.. run scoreboard players remove #rot store 360

#rotation calculate(negclk)
execute if score #suc store matches 1 run scoreboard players remove #rot store 3
execute if score #suc store matches 1 if score #rot store matches ..-180 run scoreboard players add #rot store 360

#rotation store
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rot store
data modify entity @s Rotation[1] set value 0.0f

#vertical calibration
function ut:move/hand/move/vertical