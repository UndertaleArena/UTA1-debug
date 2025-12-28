#By Nebulirion

execute align xyz positioned ~.5 ~-.5 ~.5 run function ut:lobby/credit/a/name

playsound entity.chicken.egg player @a ~ ~ ~ 1 2

execute as @e[tag=summon,limit=1,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @e[tag=credit_play,limit=1]
execute at @e[tag=summon,limit=1,type=armor_stand] run particle cloud ~ ~.5 ~ 0.2 0.2 0.2 0.04 3 normal

scoreboard players remove hid credit 1
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] credit = hid credit
###COPY FACE
data modify entity @e[tag=summon,limit=1] ArmorItems[3].components."minecraft:profile" set from block ~ ~ ~ profile
###COPY NAME
data modify storage hp Skull.temp set value []
data modify storage hp Skull.temp append from block ~ ~ ~ profile.name
setblock ~ ~ ~ oak_sign{front_text:{messages:['{"storage": "hp","nbt": "Skull.temp", "interpret": true}','""','""','""']}}
data modify entity @e[tag=summon,limit=1] CustomName set from block ~ ~ ~ front_text.messages[0]
execute if block ~ ~167 ~ gold_block run tag @e[tag=summon,limit=1,type=armor_stand] add cname_donate
execute if block ~ ~158 ~ gold_block run tag @e[tag=summon,limit=1,type=armor_stand] add cname_donate
execute if block ~ ~159 ~ gold_block run tag @e[tag=summon,limit=1,type=armor_stand] add cname_donate

execute if score helperhead credit matches 1 run tag @e[tag=summon,limit=1,type=armor_stand] add cname_helper

tag @e[tag=summon,limit=1,type=armor_stand] remove summon
setblock ~ ~ ~ structure_void

scoreboard players add headd credit 1