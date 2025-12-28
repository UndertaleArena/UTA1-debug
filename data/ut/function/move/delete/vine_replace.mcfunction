#Original By Nebulirion, edited by SY

#init score
scoreboard players set #temp store 0

#check vine data
execute if block ~ ~ ~ vine[east=true] run scoreboard players add #temp store 1
execute if block ~ ~ ~ vine[south=true] run scoreboard players add #temp store 2
execute if block ~ ~ ~ vine[west=true] run scoreboard players add #temp store 4
execute if block ~ ~ ~ vine[north=true] run scoreboard players add #temp store 8
execute if block ~ ~ ~ vine[up=true] run scoreboard players add #temp store 16

#replace to store state block
setblock ~ ~ ~ barrel{Lock:"deleted_vine",Items:[{Slot:0b,id:"vine",count:1b,components:{"minecraft:custom_data":{state:1s}}}]}

#store state
execute store result block ~ ~ ~ Items[0].components."minecraft:custom_data".state short 1 run scoreboard players get #temp store
#name for check thing
data modify block 255 2 255 front_text.messages[1] set value '{"score":{"objective":"store","name":"#temp"},"italic":false}'
data modify block ~ ~ ~ Items[0].components."minecraft:custom_name" set from block 255 2 255 front_text.messages[1]
