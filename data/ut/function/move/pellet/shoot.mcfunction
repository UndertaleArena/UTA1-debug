#By Nebulirion

function ut:move/pellet/_sys/cast_delayed

playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 2

tag @s remove prep

tag @s add blockable
tag @s add reflectable
tag @s add cutable