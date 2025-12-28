###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 0.8 1.3
###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
function ut:move/flirt/_sys/movement
###HITCHECK
scoreboard players set #hits hitcheck 99
execute if score #stop speed matches 1.. run function ut:move/flirt/hitcheck
###RANGE
execute if score @s range matches ..0 run function ut:void