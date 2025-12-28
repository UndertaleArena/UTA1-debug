###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

tag @s remove dummy_friend

scoreboard players operation #atker pid = @s pid
execute as @e[type=armor_stand,tag=dummy_friend,tag=turret] if score @s pid = #atker pid run tag @s add other_friendz

execute unless entity @e[tag=other_friendz,limit=1] as @a[tag=playing] if score @s pid = #atker pid if data entity @s Inventory[{components:{"minecraft:custom_data":{dummy_charge:1b,is_knife:0b}}}] run function ut:move/dummy_charge/display_f

scoreboard players operation @s plt1b = @s cdmax

tag @e remove other_friendz

function ut:move/dummy_friend/void_nc