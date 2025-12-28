#By Nebulirion
execute unless entity @s[tag=motion_prj] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=fireball] run function ut:move/fireball/block_reflect
execute if entity @s[tag=motion_prj] run function ut:move/motion_reflect