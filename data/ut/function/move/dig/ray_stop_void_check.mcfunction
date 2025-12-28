#By Nebulirion

data modify storage ut:temp OgPos set from entity @s Pos
tp @s ~ ~ ~
execute store result score #self y_pos run data get entity @s Pos[1] 100
execute if block ~ 0 ~ lapis_block run scoreboard players add #self y_pos 500
execute if score #self y_pos < -LowPos y_pos at @s run tag @a[tag=ray_user] add dig_ray_fail
data modify entity @s Pos set from storage ut:temp OgPos