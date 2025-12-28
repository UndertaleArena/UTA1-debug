#By Nebulirion

data modify storage ut:temp voidMSG2 set from entity @e[tag=arena_low,limit=1,scores={maplock=1}] CustomName
data modify block 255 2 255 front_text.messages[0] set value '[{"selector":"@e[tag=arena_low,limit=1,scores={maplock=1}]"},{"translate":"cht.vid.anddied"}]'
data modify entity @e[tag=arena_low,limit=1,scores={maplock=1}] CustomName set from block 255 2 255 front_text.messages[0]
