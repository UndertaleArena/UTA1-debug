#Original By Nebulirion, edited by SY

#give a in case forceload
forceload add 256 -256 256 -256

#setting temp store place board
execute positioned 256 0 -256 run fill ~ 0 ~ ~8 2 ~8 gold_block
execute positioned 256 0 -256 run setblock ~ 0 ~ bedrock

#copy lowest
clone ~-3 ~ ~-3 ~3 ~ ~3 257 1 -255 replace force

#structure saving
setblock ~-3 ~ ~-3 structure_block[mode=save]{sizeX:7,sizeY:1,sizeZ:7,posX:0,posY:1,posZ:0,name:"ut:delete_store",mode:"SAVE",ignoreEntities:1b,showboundingbox:0}
execute store result block ~-3 ~ ~-3 sizeY int 1 run scoreboard players get t y_pos
setblock ~-3 ~ ~-2 redstone_block destroy

#source floor back(structure thing)
clone 257 1 -255 263 1 -249 ~-3 ~ ~-3

#the Target Position
data modify entity @s data.Target set from entity @s Pos

# check if range have residue entity
execute align xyz positioned ~-3 ~ ~-3 as @e[tag=dog_bridge,dx=6,dz=6,dy=666] run tag @s add tmp.dog_residu