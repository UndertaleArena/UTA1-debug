#By Nebulirion

scoreboard players set @s unloadtime 14
scoreboard players add @s cdcooldown 2

attribute @s movement_speed modifier add tridentslow -0.6 add_multiplied_total


scoreboard players set #model plt2 256

item replace block 255 0 255 container.0 from entity @s weapon.mainhand
execute store result block 255 0 255 Items[0].components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get #model plt2
data modify block 255 0 255 Items[0].components."minecraft:custom_data".org_trident set from entity @s SelectedItem.components
item replace entity @s weapon.mainhand from block 255 0 255 container.0

scoreboard players set @s plt2 12
tag @s add counter
scoreboard players add @s[tag=!trident_user] move_loop 1
tag @s add trident_user

function ut:move/trident/use_orange
function ut:move/trident/use_blue