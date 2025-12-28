#Bied Nebulirion 


attribute @s generic.movement_speed modifier remove will1
attribute @s generic.movement_speed modifier remove will2
attribute @s generic.movement_speed modifier remove will3
attribute @s generic.movement_speed modifier remove will4
attribute @s generic.movement_speed modifier remove will5
attribute @s generic.movement_speed modifier remove will6

execute if score @s will matches ..0 run attribute @s generic.movement_speed modifier add will1 -.30 add_multiplied_total
execute if score @s will matches ..-20 run attribute @s generic.movement_speed modifier add will2 -.30 add_multiplied_total
execute if score @s will matches ..-40 run attribute @s generic.movement_speed modifier add will3 -.30 add_multiplied_total
execute if score @s will matches ..-60 run attribute @s generic.movement_speed modifier add will4 -.30 add_multiplied_total
execute if score @s will matches ..-80 run attribute @s generic.movement_speed modifier add will5 -.30 add_multiplied_total
execute if score @s will matches ..-100 run attribute @s generic.movement_speed modifier add will6 -.30 add_multiplied_total