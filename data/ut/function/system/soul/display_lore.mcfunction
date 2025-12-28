#By Nebulirion
#drop your own soul

data modify entity @s Item.components."minecraft:lore" prepend value '{"color":"white","italic":false,"translate":"itm.bosssoul.3"}'
data modify entity @s Item.components."minecraft:lore" prepend value '{"color":"white","italic":false,"translate":"itm.bosssoul.2"}'
data modify entity @s Item.components."minecraft:lore" prepend value '{"color":"white","italic":false,"translate":"itm.bosssoul.1"}'
data modify entity @s Item.components."minecraft:lore" prepend value '{"color":"white","italic":false,"translate":"itm.bosssoul.0"}'

data modify entity @s Item.components."minecraft:lore" prepend value '""'
execute if score #this tid matches 1 run data modify entity @s Item.components."minecraft:lore" prepend value '{"translate":"itm.bosssoul.b","color":"white","italic":false,"with":[{"translate":"soul.1","color":"red"}]}]}'
execute if score #this tid matches 2 run data modify entity @s Item.components."minecraft:lore" prepend value '{"translate":"itm.bosssoul.b","color":"white","italic":false,"with":[{"translate":"soul.2","color":"aqua"}]}]}'
execute if score #this tid matches 3 run data modify entity @s Item.components."minecraft:lore" prepend value '{"translate":"itm.bosssoul.b","color":"white","italic":false,"with":[{"translate":"soul.3","color":"gold"}]}]}'
execute if score #this tid matches 4 run data modify entity @s Item.components."minecraft:lore" prepend value '{"translate":"itm.bosssoul.b","color":"white","italic":false,"with":[{"translate":"soul.4","color":"blue"}]}]}'
execute if score #this tid matches 5 run data modify entity @s Item.components."minecraft:lore" prepend value '{"translate":"itm.bosssoul.b","color":"white","italic":false,"with":[{"translate":"soul.5","color":"yellow"}]}]}'
execute if score #this tid matches 6 run data modify entity @s Item.components."minecraft:lore" prepend value '{"translate":"itm.bosssoul.b","color":"white","italic":false,"with":[{"translate":"soul.6","color":"light_purple"}]}]}'
execute if score #this tid matches 7 run data modify entity @s Item.components."minecraft:lore" prepend value '{"translate":"itm.bosssoul.b","color":"white","italic":false,"with":[{"translate":"soul.7","color":"green"}]}]}'
execute if score #this tid matches 8 run data modify entity @s Item.components."minecraft:lore" prepend value '{"translate":"itm.bosssoul.b","color":"white","italic":false,"with":[{"translate":"soul.8","color":"white"}]}]}'