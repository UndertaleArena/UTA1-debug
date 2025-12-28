#By Nebulirion 


attribute @s generic.movement_speed modifier remove chrspeed1
attribute @s generic.movement_speed modifier remove chrspeed2
attribute @s generic.movement_speed modifier remove chrspeed3
attribute @s generic.movement_speed modifier remove chrspeed4
attribute @s generic.movement_speed modifier remove chrspeed5

execute if score @s speed matches 1 run attribute @s generic.movement_speed modifier add chrspeed1 -.25 add_multiplied_total
execute if score @s speed matches 2 run attribute @s generic.movement_speed modifier add chrspeed2 -.21 add_multiplied_total
execute if score @s speed matches 3 run attribute @s generic.movement_speed modifier add chrspeed3 -.17 add_multiplied_total
execute if score @s speed matches 4 run attribute @s generic.movement_speed modifier add chrspeed4 -.13 add_multiplied_total
execute if score @s speed matches 5 run attribute @s generic.movement_speed modifier add chrspeed5 -.09 add_multiplied_total
