#hi im Bob
#
fill ~-6 ~1 ~-13 ~20 ~28 ~13 air replace #ut:strb
setblock ~ ~ ~ minecraft:structure_block{posZ:-13,posX:-6,posY:3,mode:"LOAD",name:"ut:mini_air"}
setblock ~ ~1 ~ redstone_block replace
setblock ~ ~1 ~ air replace
#
data merge block ~ ~ ~ {posY:4}
execute if score -locked map matches 1 run data modify block ~ ~ ~ {} merge from storage ut:maps Selected.StructureLocked
execute unless score -locked map matches 1 run data modify block ~ ~ ~ {} merge from storage ut:maps Selected.StructureBlock
setblock ~ ~1 ~ redstone_block replace
#
fill ~ ~ ~ ~ ~1 ~ air
#