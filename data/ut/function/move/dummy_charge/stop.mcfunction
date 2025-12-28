#By Nebulirion

###ITEM
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{dummy_charge:1b,is_knife:0b}}}] run function ut:move/dummy_charge/display_f
###

scoreboard players set @s cd 0
scoreboard players set @s cddis 0

#scoreboard players add @s[tag=dummy_user_knife] cdmax 60
#tag @s remove dummy_user_knife

scoreboard players reset @s plt1
scoreboard players reset @s plt1b
scoreboard players reset @s plt2b
scoreboard players remove @s[tag=dummy_charge_user] move_loop 1
tag @s remove dummy_charge_user

attribute @s generic.movement_speed modifier remove dummychargeslow

scoreboard players operation #user pid = @s pid
execute as @e[tag=can_dummy_charge,tag=prepare] if score @s pid = #user pid at @s run function ut:move/dummy_friend/void_nc
