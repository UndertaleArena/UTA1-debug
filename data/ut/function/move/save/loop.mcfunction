# origin by FocalSalt, edited by SY91419

# float
scoreboard players add @s life 1
execute if score @s life matches 30.. run scoreboard players set @s life -30

execute if score @s life matches 0..9 run tp @s ~ ~0.003 ~
execute if score @s life matches 10..19 run tp @s ~ ~-0.003 ~
execute if score @s life matches 20..29 run tp @s ~ ~-0.008 ~
execute if score @s life matches -30..-21 run tp @s ~ ~-0.003 ~
execute if score @s life matches -20..-11 run tp @s ~ ~0.003 ~
execute if score @s life matches -10..-1 run tp @s ~ ~0.008 ~

# rotation
execute positioned as @s run tp @s ~ ~ ~ ~-2.9 0