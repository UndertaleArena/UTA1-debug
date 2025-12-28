#By Nebulirion

scoreboard players set @s unloadtime 12
scoreboard players set @s[tag=attack_buffed] unloadtime 10
scoreboard players add @s mpcooldown 2

scoreboard players set @s plt1 48
scoreboard players set @s[tag=attack_buffed] plt1 24
scoreboard players set @s plt1b 4

scoreboard players set #model plt2 257
execute if entity @s[tag=attack_buffed] run scoreboard players add #model plt2 9000

item replace block 255 0 255 container.0 from entity @s weapon.mainhand
execute store result block 255 0 255 Items[0].components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get #model plt2
data modify block 255 0 255 Items[0].components."minecraft:attribute_modifiers" append value {type:"attack_speed",slot:"mainhand",amount:-4.0d,operation:"add_value",id:"asgore_speed"}
data modify block 255 0 255 Items[0].components."minecraft:custom_data".org_laser_ex set from entity @s SelectedItem.components
item replace entity @s[tag=!lazer_ex_user] weapon.mainhand from block 255 0 255 container.0

tag @s[tag=attack_buffed] add attack_buffed_def
scoreboard players add @s[tag=!lazer_ex_user,tag=!attack_buffed_def] def 50
scoreboard players add @s[tag=!lazer_ex_user] move_loop 1
tag @s add lazer_ex_user

function ut:move/head/change