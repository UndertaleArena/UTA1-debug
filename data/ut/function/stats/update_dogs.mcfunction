#By Nebulirion

scoreboard players set min random 66
scoreboard players set max random 67

execute store result score #factor random if entity @a[team=!,advancements={ut:other/timer/level5=true}]
scoreboard players operation #factor random *= 33 const
scoreboard players remove #factor random 1
execute if score #factor random matches 1.. run scoreboard players operation min random -= #factor random

scoreboard players set @s dog 0
item replace block 255 0 255 container.0 with nether_brick
item modify block 255 0 255 container.0 ut:random
execute store result score @s[advancements={ut:other/timer/level5=true}] dog run data get block 255 0 255 Items[0].components."minecraft:attribute_modifiers".modifiers[0].amount