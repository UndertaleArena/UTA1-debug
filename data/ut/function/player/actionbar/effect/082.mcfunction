#By TSbread, Nebulirion and Flesy_Z

execute if score @s passive_timer matches 1 run data modify storage soul ActionList prepend value '{"text":"\\uF819\\uF817\\uF082\\uF819\\uF817"}'
execute if score @s passive_timer matches 2 if score @s shift matches 1.. run data modify storage soul ActionList prepend value '{"text":"\\uF819\\uF817\\uF092\\uF819\\uF817"}'
execute if score @s passive_timer matches 2 unless score @s shift matches 1.. run data modify storage soul ActionList prepend value '{"text":"\\uF819\\uF817\\uF093\\uF819\\uF817"}'
execute if score @s passive_timer matches 3 if score @s shift matches 1.. run data modify storage soul ActionList prepend value '{"text":"\\uF819\\uF817\\uF091\\uF819\\uF817"}'
execute if score @s passive_timer matches 3 unless score @s shift matches 1.. run data modify storage soul ActionList prepend value '{"text":"\\uF819\\uF817\\uF083\\uF819\\uF817"}'

execute if score @s passive_timer matches 1..3 run data modify storage soul ActionList append value '{"text":"\\uF839\\uF838"}'