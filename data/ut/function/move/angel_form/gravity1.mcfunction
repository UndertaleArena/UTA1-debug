#By Nebulirion
##

#execute store result score motion store run data get entity @s Motion[1] 10000
#scoreboard players remove motion store 800
#execute store result storage ut:macro Input.grav double 0.0001 run scoreboard players get motion store
scoreboard players operation motion store *= 1 const
scoreboard players operation motion store /= 6 const
#execute if score motion store matches -1000..1000 run scoreboard players remove motion store 1600
execute store result storage ut:macro Input.grav double 0.0001 run scoreboard players get motion store

tellraw @a {"nbt":"Input.grav","storage": "ut:macro", "interpret": true}

attribute @s generic.gravity modifier remove angelgrav
function ut:move/angel_form/gravity_m with storage ut:macro Input