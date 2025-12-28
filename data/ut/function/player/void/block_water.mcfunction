#By Nebulirion

data modify storage ut:temp voidMSG set from entity @e[tag=arena_low,limit=1,scores={maplock=1}] CustomName
data modify entity @e[tag=arena_low,limit=1,scores={maplock=1}] CustomName set value '{"translate":"cht.vid.water"}'
function ut:player/void/main
data modify entity @e[tag=arena_low,limit=1,scores={maplock=1}] CustomName set from storage ut:temp voidMSG