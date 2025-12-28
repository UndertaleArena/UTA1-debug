###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
scoreboard players add @s life 1
#execute if score @s life matches ..6 run scoreboard players add @s rot 550
#execute if score @s life matches 7.. run scoreboard players remove @s rot 550
#execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s rot
execute rotated as @s if score @s life matches ..6 rotated ~5.5 ~ run function ut:move/fireball/_sys/movement
execute rotated as @s if score @s life matches 7.. rotated ~-5.5 ~ run function ut:move/fireball/_sys/movement
execute if score @s life matches 12.. run scoreboard players reset @s life
###HITCHECK
scoreboard players set #hits hitcheck 1
execute if score #stop speed matches 1.. run function ut:move/fireball/hitcheck
###RANGE
execute if score @s range matches ..0 run function ut:void