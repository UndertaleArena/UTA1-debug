#Original by Nebulirion, edited by SY

#sound and particle effects
playsound block.end_portal.spawn player @a ~ ~ ~ 2 1
particle explosion_emitter ~ ~ ~ 0 0 0 1 1

#tag adding
tag @s add area_store

#check and copy thing
function ut:move/delete/store

#replace origin place to air thing(the hole digging)
#data modify entity @s Pos set from entity @s data.Target
execute store result entity @s Pos[1] double 1 run data get entity @s data.min 1
execute at @s run function ut:move/delete/scan_delete

#find storage pos
scoreboard players set #temp store 0
execute positioned 256 0 -256 run forceload add ~ ~-9 ~ ~-9
execute positioned 256 0 -256 positioned ~ 0 ~-9 run function ut:move/delete/store/pos_loop

#score resetting
scoreboard players reset @s life
scoreboard players reset @s ray_distance
scoreboard players reset @s y_pos

#data setting
data modify entity @s Pos set from entity @s data.Target
data modify entity @s CustomName set value '"DStore"'

tellraw @a[tag=debug] ["",{"selector":"@s"}," succeed, Code: ",{"score":{"name":"@s","objective":"aid"}}]

#tag removing
tag @s remove move
tag @s remove spc
tag @s remove delete_target
