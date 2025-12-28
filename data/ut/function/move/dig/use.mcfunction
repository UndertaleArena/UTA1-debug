#By Nebulirion

tag @s add dig_rc
execute if entity @s[nbt={OnGround:1b}] run function ut:move/dig/use_suc
execute unless entity @s[nbt={OnGround:1b}] run function ut:move/dig/use_fail

tag @s remove dig_ray_fail

tag @s remove dig_rc