#By Nebulirion
data modify storage soul ActionList set value []
######EFFECTS
function ut:player/actionbar/effect/main
######STATS
data modify storage soul ActionList append value '{"text":"\\uF814\\uF100\\uF80C\\uF81B\\uF819\\uF818\\uF817"}'
######MANA
execute if score @s mpmax matches 1.. if score @s mp >= @s mpcost unless score @s mp <= @s mpmax run data modify storage soul ActionList append value '{"translate":"acb.mp","color":"aqua","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"mp"},"font":"minecraft:back.state"},{"bold":false,"color":"aqua","score":{"name":"@s","objective":"mp"},"font":"minecraft:default"}]]}'
execute if score @s mpmax matches 1.. if score @s mp >= @s mpcost if score @s mp <= @s mpmax run data modify storage soul ActionList append value '{"translate":"acb.mp","color":"aqua","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"mp"},"font":"minecraft:back.state"},{"bold":false,"color":"white","score":{"name":"@s","objective":"mp"},"font":"minecraft:default"}]]}'
execute if score @s mpmax matches 1.. unless score @s mp >= @s mpcost run data modify storage soul ActionList append value '{"translate":"acb.mp","color":"red","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"mp"},"font":"minecraft:back.state"},{"bold":false,"color":"red","score":{"name":"@s","objective":"mp"},"font":"minecraft:default"}]]}'
execute unless score @s mpmax matches 1.. if score @s ml > @s mlmax run data modify storage soul ActionList append value '{"translate":"acb.ml","color":"blue","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"mldis"},"extra":[{"text":"%"}],"font":"minecraft:back.state"},{"bold":false,"color":"aqua","score":{"name":"@s","objective":"mldis"},"extra":[{"text":"%"}],"font":"minecraft:default"}]]}'
execute unless score @s mpmax matches 1.. if score @s ml = @s mlmax run data modify storage soul ActionList append value '{"translate":"acb.ml","color":"blue","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"mldis"},"extra":[{"text":"%"}],"font":"minecraft:back.state"},{"bold":false,"color":"white","score":{"name":"@s","objective":"mldis"},"extra":[{"text":"%"}],"font":"minecraft:default"}]]}'
execute unless score @s mpmax matches 1.. if score @s ml < @s mlmax run data modify storage soul ActionList append value '{"translate":"acb.ml","color":"red","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"mldis"},"extra":[{"text":"%"}],"font":"minecraft:back.state"},{"bold":false,"color":"red","score":{"name":"@s","objective":"mldis"},"extra":[{"text":"%"}],"font":"minecraft:default"}]]}'
######CHARGE
execute if score @s cd >= @s cdmax run data modify storage soul ActionList append value '{"translate":"acb.ch","color":"yellow","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"cddis"},"extra":[{"text":"%"}],"font":"minecraft:back.state"},{"bold":false,"color":"white","score":{"name":"@s","objective":"cddis"},"extra":[{"text":"%"}],"font":"minecraft:default"}]]}'
execute unless score @s cd >= @s cdmax run data modify storage soul ActionList append value '{"translate":"acb.ch","color":"red","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"cddis"},"extra":[{"text":"%"}],"font":"minecraft:back.state"},{"bold":false,"color":"red","score":{"name":"@s","objective":"cddis"},"extra":[{"text":"%"}],"font":"minecraft:default"}]]}'
######WILL
execute if score @s will > #spareLim will run data modify storage soul ActionList append value '{"translate":"acb.wl","color":"gold","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"will"},"extra":[{"text":"%"}],"font":"minecraft:back.state"},{"bold":false,"color":"white","score":{"name":"@s","objective":"will"},"extra":[{"text":"%"}],"font":"minecraft:default"}]]}'
execute unless score @s will > #spareLim will run data modify storage soul ActionList append value '{"translate":"acb.wl","color":"red","font":"actionbar","with":[[{"bold":false,"score":{"name":"@s","objective":"will"},"extra":[{"text":"%"}],"font":"minecraft:back.state"},{"bold":false,"color":"red","score":{"name":"@s","objective":"will"},"extra":[{"text":"%"}],"font":"minecraft:default"}]]}'
######STAT END
data modify storage soul ActionList append value '{"text":"\\uF834"}'
######DOGINDICATOR
execute if score -GameMode game matches 6 if score -IsDogExist dog_timer matches 1 run function ut:player/actionbar/dog
######FADE
data modify storage soul ActionList prepend value '{"text":"\\uEfa0\\uF80B"}'
data modify storage soul ActionList_AP set value '{"text":"\\uF80B\\uEfb0"}'
execute if score @s[tag=!no_red_filter] filter_l matches 1.. run function ut:player/actionbar/red_filter_l
execute if score @s[tag=!no_red_filter] filter_r matches 1.. run function ut:player/actionbar/red_filter_r
data modify storage soul ActionList append from storage soul ActionList_AP
######
title @s actionbar [{"nbt":"ActionList[]","storage":"soul","interpret":true,"font":"minecraft:actionbar"}]