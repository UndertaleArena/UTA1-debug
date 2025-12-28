#By Nebulirion

scoreboard players add @s unloadtime 20

function ut:lobby/minis/dummy/player/join

clear @s minecraft:carrot_on_a_stick[custom_data~{dm_move:1b}]

execute if entity @s[nbt={Inventory:[{Slot:5b}]}] run give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:lore=['{"text":""}','{"translate":"mng.bone1","italic":false,"color":"white"}','{"translate":"mng.bone2","italic":false,"color":"white"}'],minecraft:custom_name='{"translate":"mng.bone","italic":false,"bold":true}',minecraft:custom_data={bone:1b,cd_time:20,dm_move:1b}]
execute unless entity @s[nbt={Inventory:[{Slot:5b}]}] run item replace entity @s container.5 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:lore=['{"text":""}','{"translate":"mng.bone1","italic":false,"color":"white"}','{"translate":"mng.bone2","italic":false,"color":"white"}'],minecraft:custom_name='{"translate":"mng.bone","italic":false,"bold":true}',minecraft:custom_data={bone:1b,cd_time:20,dm_move:1b}]

playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
tellraw @s [{"translate":"pfx.info"},{"translate":"mini.shoot0","with":[{"translate":"mng.bone","color":"yellow"}]}]