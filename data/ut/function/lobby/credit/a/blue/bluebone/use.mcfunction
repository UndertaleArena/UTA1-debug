#By Nebulirion

playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 2 1.2

scoreboard players set @s unloadtime 6
scoreboard players set @s last_fight 0

function ut:move/bluebone/random
#kill @e[tag=random_as,sort=random,limit=1]
#execute at @e[tag=random_as] run function 
tag @e[tag=random_as] remove random_as

