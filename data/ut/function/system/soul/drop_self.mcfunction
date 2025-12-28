#By Nebulirion
#drop your own soul

tag @s add soul_deader
team leave @s
scoreboard players operation #this tid = @s tid

###Prepare Item
item replace entity 0-0-0-0-1 container.0 with carrot_on_a_stick[custom_data={soul:1b,canned:0b,nonboss:0b,can_fist:1b,loot_soul:1b},attribute_modifiers={modifiers:[], show_in_tooltip:false},custom_name='{"text":"","color":"white","italic":false,"bold":true,"extra":[{"translate":"itm.bosssoul","with":[{"translate":"tem.0"}]}]}'] 1

###Modify Model
scoreboard players operation #soul tid = @s tid
execute if score -GameMode game matches 0..3 unless score setSoul gamerule matches 1 run function ut:system/soul/drop_self_random
#
scoreboard players operation #cmd tid = #soul tid
execute store result entity 0-0-0-0-1 Item.components."minecraft:custom_data".soultype int 1 run scoreboard players get #soul tid
scoreboard players add #cmd tid 1000
execute if score -fallen soul matches 1 run data modify entity 0-0-0-0-1 Item.components."minecraft:custom_data".fallen set value 1b
execute if score killBonus gamerule matches 3 run data modify entity 0-0-0-0-1 Item.components."minecraft:custom_data".nonboss set value 1b
#execute if score soulType gamerule matches 1 run scoreboard players add #cmd tid 10
execute store result entity 0-0-0-0-1 Item.components."minecraft:custom_model_data" int 1 run scoreboard players get #cmd tid

###Modify Killer Info
execute if entity @a[tag=soul_deader] run item modify entity 0-0-0-0-1 container.0 ut:soul_lore
execute as 0-0-0-0-1 run function ut:system/soul/display
execute store result entity 0-0-0-0-1 Item.components."minecraft:custom_data".ownerID int 1 run scoreboard players get @s pid
execute store result entity 0-0-0-0-1 Item.components."minecraft:custom_data".ownerTeam int 1 run scoreboard players get @s tid

###Drop Item
tag @e[type=item,tag=!checked_item] add checked_item

execute if score -tomid soul matches 1 at @e[tag=arena_sp,limit=1,scores={maplock=1}] run loot spawn ~ ~ ~ loot ut:pop
execute unless score -tomid soul matches 1 run loot spawn ~ ~1 ~ loot ut:pop

data merge entity @e[type=item,tag=!checked_item,limit=1] {Tags:[summon,move,spc,soul_item],Invulnerable:1b,Glowing:1b,PickupDelay:20s,Age:-32767,Thrower:[I;0,0,0,0]}
data modify entity @e[type=item,tag=summon,limit=1] Item set from entity 0-0-0-0-1 Item

###Check Auto Absorb
execute if entity @a[tag=soul_killer,tag=!soul_deader] if score -autoabsorb soul matches 1 as @e[type=item,tag=summon,limit=1] run function ut:system/soul/autoabsorb

###Check to Mid

###Clean Up
tag @e[tag=summon] remove summon
tag @s remove soul_deader
function ut:system/team/join