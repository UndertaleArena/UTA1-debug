#By Nebulirion

scoreboard players set @s unloadtime 8
playsound minecraft:block.lever.click player @s ~ ~ ~ 2 1.2

item replace block 255 0 255 container.0 from entity @s weapon.mainhand

execute store result score #onoff store run data get block 255 0 255 Items[0].components."minecraft:custom_model_data"
scoreboard players add #onoff store 1
execute unless score #onoff store matches 107..108 run scoreboard players set #onoff store 107

execute store result block 255 0 255 Items[0].components."minecraft:custom_model_data" int 1 run scoreboard players get #onoff store
execute if score #onoff store matches 107 run data modify block 255 0 255 Items[0].components."minecraft:custom_name" set value '{"translate":"chr.mettaton.spn1","italic":false,"bold":true}'
execute if score #onoff store matches 108 run data modify block 255 0 255 Items[0].components."minecraft:custom_name" set value '{"translate":"chr.mettaton.spn2","italic":false,"bold":true}'

item replace entity @s weapon.mainhand from block 255 0 255 container.0