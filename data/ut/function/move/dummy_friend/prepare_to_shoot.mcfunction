###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

function ut:move/dummy_friend/_sys/cast_delayed

data modify entity @s[tag=dummy_friend] ArmorItems[3].components."minecraft:custom_model_data" set value 0

execute if entity @s[tag=dummy_friend] run scoreboard players add #gain mp 20

tag @s remove prepare
tag @s add inair

tag @s[tag=flying_knife] add blockable
tag @s[tag=flying_knife] add reflectable
tag @s[tag=flying_knife] add cutable