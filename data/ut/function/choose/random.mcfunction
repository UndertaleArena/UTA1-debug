#By Nebulirion
#FocalSalt is also here

scoreboard players set min random 1
scoreboard players set max random 17

scoreboard players set -exchance store 13

execute if score @s[tag=double_dog] istobychr matches 1 run scoreboard players set max random 9
execute if score @s[advancements={ut:chr/tobyfox/lv5=true}] istobychr matches 1 run scoreboard players set -exchance store 7

item replace entity 0-0-0-0-1 container.0 with stone
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score -truerandom store run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

execute unless score @s istobychr matches 1 run scoreboard players set -truerandom store 0

function ut:choose/random_chr