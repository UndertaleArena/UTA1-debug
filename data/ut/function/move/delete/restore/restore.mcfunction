#Original By Nebulirion, edited by SY

#load the storage place
forceload add 256 -256 256 -256

execute store result score -distance ray_distance run data get entity @s data.sid
scoreboard players set @s ray_distance 0

execute positioned 256 0 -256 positioned ~ ~ ~-9 run function ut:move/delete/restore_loop_load

#load structure
setblock ~-3 ~ ~-3 structure_block[mode=load]{posX:0,posY:0,posZ:0,name:"ut:delete_store",mode:"LOAD",ignoreEntities:1b}
setblock ~-3 ~1 ~-3 redstone_block

#vine restore
execute store result entity @s Pos[1] double 1 run data get entity @s data.max 1
scoreboard players set @s ray_distance 0
execute store result score -distance ray_distance run data get entity @s data.storange
execute at @s run function ut:move/delete/vine_restore_loop

#success message
tellraw @a[tag=debug] ["No.",{"score":{"objective":"aid","name":"@s"}}," have been restored."]

#void entity
function ut:void