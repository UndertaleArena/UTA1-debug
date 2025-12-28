#By Nebulirion
#
#
data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b}]
data modify block 255 0 255 Items[0].components set from entity @s Inventory[{components:{"minecraft:custom_data":{org_trident:{}}}}].components."minecraft:custom_data".org_trident
execute unless data block 255 0 255 Items[0].components."minecraft:custom_data".trident run data modify block 255 0 255 Items[0].components set from storage ut:chrs Data[9].CdMove.components
execute store result score clear store run clear @s carrot_on_a_stick[custom_data~{org_trident:{}}]
execute if score clear store matches 1.. run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
##
#
##
scoreboard players operation #this pid = @s pid
execute as @e[tag=trident] if score @s sid = #this pid run function ut:move/trident/change_t
#
attribute @s movement_speed modifier remove tridentslow

scoreboard players reset @s plt2
scoreboard players remove @s[tag=trident_user] move_loop 1
tag @s remove trident_user
function ut:move/counter/stop

function ut:player/infight/use