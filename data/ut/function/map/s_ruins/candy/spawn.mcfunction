#By Nebulirion
#drop your own... Candy...?

###Prepare Item
item replace entity 0-0-0-0-1 container.0 with minecraft:glow_berries[minecraft:lore=['""','{"text":"","color":"white","italic":false,"bold":false,"extra":[{"translate":"itm.candy1"}]}','{"text":"","color":"white","italic":false,"bold":false,"extra":[{"translate":"itm.candy2"}]}'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:custom_name='{"text":"","color":"white","italic":false,"bold":true,"extra":[{"translate":"itm.candy"}]}',minecraft:custom_data={can_fist:1b,monster_candy:1b}] 1

###Drop Item
tag @e[type=item,tag=!checked_item] add checked_item

loot spawn ~ ~-.25 ~ loot ut:pop

data merge entity @e[type=item,tag=!checked_item,limit=1] {Tags:[monster_candy,summon,move,spc,soul_item,not_really_a_soul_item],Invulnerable:1b,Glowing:0b,PickupDelay:20s,Age:-32767,Thrower:[I;0,0,0,0]}

data modify entity @e[type=item,tag=summon,limit=1] Item set from entity 0-0-0-0-1 Item

###Clean Up
tag @e[tag=summon] remove summon