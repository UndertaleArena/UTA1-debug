#By Nebulirion

# jump lock
## clear effect
effect clear @s jump_boost
attribute @s generic.jump_strength modifier remove impale_jump
## give effect
execute unless score @s impaled_level matches 2.. run effect give @s minecraft:jump_boost infinite 0 true
execute if score @s impaled_level matches 3 run attribute @s generic.jump_strength modifier add impale_jump -0.5 add_multiplied_total
execute if score @s impaled_level matches 4.. run attribute @s generic.jump_strength modifier add impale_jump -1 add_multiplied_total
# originally: unless 2..; if 3; if 4..
# idk do there detailer or thing
# btw neb, if immune you'll get impale -1 sometimes

# speed modify
execute unless score @s impaled_level matches 1 run attribute @s generic.movement_speed modifier remove spr1
execute unless score @s impaled_level matches 2 run attribute @s generic.movement_speed modifier remove spr2
execute unless score @s impaled_level matches 3 run attribute @s generic.movement_speed modifier remove spr3
execute unless score @s impaled_level matches 4 run attribute @s generic.movement_speed modifier remove spr4
execute unless score @s impaled_level matches 5.. run attribute @s generic.movement_speed modifier remove spr5
execute if score @s impaled_level matches 1 run attribute @s generic.movement_speed modifier add spr1 -.10 add_multiplied_total
execute if score @s impaled_level matches 2 run attribute @s generic.movement_speed modifier add spr2 -.20 add_multiplied_total
execute if score @s impaled_level matches 3 run attribute @s generic.movement_speed modifier add spr3 -.30 add_multiplied_total
execute if score @s impaled_level matches 4 run attribute @s generic.movement_speed modifier add spr4 -.40 add_multiplied_total
execute if score @s impaled_level matches 5.. run attribute @s generic.movement_speed modifier add spr5 -.50 add_multiplied_total