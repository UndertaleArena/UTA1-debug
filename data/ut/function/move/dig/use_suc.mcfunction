#By Nebulirion

execute positioned ~ ~1.5 ~ run function ut:move/dig/ray

execute unless entity @s[tag=dig_ray_fail] run function ut:move/dig/use_suc2
execute if entity @s[tag=dig_ray_fail] run function ut:move/dig/use_fail2