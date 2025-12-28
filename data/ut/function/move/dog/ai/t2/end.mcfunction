#By Nebulirion

#execute store result score @s x_lastground run data get entity @e[tag=arena_sp,limit=1,scores={maplock=1}] Pos[0] 100
#execute store result score @s y_lastground run data get entity @e[tag=arena_sp,limit=1,scores={maplock=1}] Pos[1] 100
#execute store result score @s z_lastground run data get entity @e[tag=arena_sp,limit=1,scores={maplock=1}] Pos[2] 100


function ut:move/dog/ai/t1/v0/start