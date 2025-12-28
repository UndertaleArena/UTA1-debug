#By Nebulirion

execute if entity @s[nbt={OnGround:1b}] run function ut:move/floor_bone/use_suc
execute unless entity @s[nbt={OnGround:1b}] run function ut:move/floor_bone/use_fail