#By Nebulirion

execute if score @s tid = #user tid run tag @s add inject_target_can
execute unless score @s tid = #user tid if entity @s[tag=amalgamate] run tag @s add inject_target_can
execute unless score @s tid = #user tid if entity @s[tag=undying] if score @s hp matches 0 run tag @s add inject_target_can
