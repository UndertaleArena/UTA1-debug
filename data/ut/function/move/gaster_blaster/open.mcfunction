#By Nebulirion

execute at @s run playsound minecraft:entity.ender_dragon.ambient player @a ~ ~ ~ 2 1.2 
item replace entity @s armor.head with sugar
tag @s remove prep

function ut:move/gaster_blaster/aim
function ut:move/gaster_blaster/cast_math
kill @e[tag=gb_target]

scoreboard players set @s life 30

tp @s ~ ~ ~ ~ ~-15