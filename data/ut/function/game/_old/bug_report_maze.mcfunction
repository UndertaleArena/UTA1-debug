#By Nebulirion

setblock 259 147 1308 minecraft:structure_block[mode=save]{author:"Nebulirion",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"ut:maze_info",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:8,sizeY:20,sizeZ:48}
setblock 260 147 1308 minecraft:redstone_block
fill 259 147 1308 260 147 1308 air

tellraw @s [{"text":"[!] generated debug file in \"<worldfolder>/generated/ut/structures/maze_info.nbt\", please send it to the creators!","color":"gray"}]