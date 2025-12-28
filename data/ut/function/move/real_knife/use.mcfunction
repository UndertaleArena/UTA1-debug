#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1

effect give @s slowness 1 4 true

###
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 2 2

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{knife:1b}}}] run tag @s add had_knife
clear @s minecraft:carrot_on_a_stick[custom_data~{knife:1b}]

give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=104,minecraft:lore=['{"translate":"dsc.mwmove","italic":false,"color":"red"}','{"text":""}','{"translate":"chr.chara.mwx1","italic":false,"color":"white"}'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:knockback":3},show_in_tooltip:0b},minecraft:custom_name='{"translate":"chr.chara.mwxn","color":"red","italic":false,"bold":true}',minecraft:custom_data={real_knife_knife:1b},minecraft:hide_additional_tooltip={}]

###
scoreboard players set @s plt3 120
scoreboard players operation @s plt3b = @s dtmax
scoreboard players operation @s plt3b /= @s plt3
###
scoreboard players add @s[tag=!real_knife_user] move_loop 1
tag @s add real_knife_user
tag @s add dt_lock

###USE
scoreboard players set @s unloadtime 20
scoreboard players operation @s ml = @s mlmax
scoreboard players set -new mlmax 20
function ut:move/melee/cooldown