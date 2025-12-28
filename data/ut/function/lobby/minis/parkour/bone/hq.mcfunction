#By Nebulirion

scoreboard players add @s life 1

fill ^ ^ ^-1 ^ ^ ^1 minecraft:smooth_red_sandstone_slab[type=top] replace air
tp @s ^ ^ ^0.0769

execute if score @s life matches 240.. run function ut:lobby/minis/parkour/bone/stop