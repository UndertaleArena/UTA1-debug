#Original By Nebulirion, edited by SY

execute store result score #temp store run data get entity @s data.storange 1

tellraw @a[tag=debug] ["[",{"selector":"@s"},"] storing back, aid = ",{"score":{"objective":"aid","name":"@s"}},", sid = ",{"nbt":"data.sid","entity":"@s"}]

#store the structure
setblock ~ 1 ~ structure_block[mode=save]{sizeX:7,sizeY:1,sizeZ:7,posX:1,posY:0,posZ:1,name:"ut:delete_store",mode:"SAVE",ignoreEntities:1b} destroy
execute store result block ~ 1 ~ sizeY int 1 run scoreboard players get #temp store
setblock ~ 2 ~ redstone_block destroy

#stuff remove
fill ~ 0 ~ ~8 63 ~8 air
tag @s add loaded

#resize the bound
execute if score -distance ray_distance = ram_size store positioned ~ ~ ~9 run function ut:move/delete/ram_resize