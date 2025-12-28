#By Nebulirion

execute unless data storage soul SoulInv[0] run function ut:system/soul/drop_mojang

clear @s carrot_on_a_stick[custom_data~{soul:1b}] 1

###Summon Item
tag @e[type=item,tag=!checked_item] add checked_item
loot spawn ~ ~1 ~ loot ut:pop
data merge entity @e[type=item,tag=!checked_item,limit=1] {Tags:[summon,move,spc,soul_item],Invulnerable:1b,Glowing:1b,PickupDelay:20s,Age:-32767,Thrower:[I;0,0,0,0]}
execute if data storage soul SoulInv[0].components."minecraft:custom_data"{canned:1b} run function ut:system/soul/drop_one_uncan
data modify entity @e[type=item,tag=summon,limit=1] Item.components set from storage soul SoulInv[0].components

###Check Auto Absorb
execute if entity @a[tag=soul_killer,tag=!soul_deader] if score -autoabsorb soul matches 1 as @e[type=item,tag=summon,limit=1] run function ut:system/soul/autoabsorb

###Clean Up
tag @e[tag=summon] remove summon