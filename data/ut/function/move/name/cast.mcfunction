#By Nebulirion

scoreboard players operation #this pid = @s pid
execute as @e[tag=name] if score @s sid = #this pid run tag @s add cooler_name
execute unless entity @e[tag=cooler_name] run function ut:move/name/cast_confirm
tag @e remove cooler_name