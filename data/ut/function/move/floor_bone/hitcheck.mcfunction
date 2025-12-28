#By Nebulirion

tag @s remove floor_bone_target
scoreboard players set #check hitcheck 0

###HITBOX
function ut:move/counter/check

###SUCCES
execute if score #check hitcheck matches 1 run function ut:move/floor_bone/hit