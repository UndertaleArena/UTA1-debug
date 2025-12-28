#By Nebulirion (likes Pokemon)

#####BASE SPEED
attribute @s movement_speed modifier add vslow -.25 add_multiplied_base
attribute @s movement_speed modifier add slow -.21 add_multiplied_base
attribute @s movement_speed modifier add normal -.17 add_multiplied_base
attribute @s movement_speed modifier add fast -.13 add_multiplied_base
attribute @s movement_speed modifier add vfast -.09 add_multiplied_base

attribute @s movement_speed modifier remove vslow
attribute @s movement_speed modifier remove slow
attribute @s movement_speed modifier remove normal
attribute @s movement_speed modifier remove fast
attribute @s movement_speed modifier remove vfast

#####SPEED CHANGE
attribute @s movement_speed modifier add slow100 -1.0 add_multiplied_total
attribute @s movement_speed modifier add slow80 -0.8 add_multiplied_total
attribute @s movement_speed modifier add slow60 -0.6 add_multiplied_total
attribute @s movement_speed modifier add slow40 -0.4 add_multiplied_total
attribute @s movement_speed modifier add slow20 -0.2 add_multiplied_total

attribute @s movement_speed modifier remove slow100
attribute @s movement_speed modifier remove slow80
attribute @s movement_speed modifier remove slow60
attribute @s movement_speed modifier remove slow40
attribute @s movement_speed modifier remove slow20

#####KB RESISTANCE
attribute @s knockback_resistance modifier add kbresist 1.0 add_value

attribute @s knockback_resistance modifier remove kbresist