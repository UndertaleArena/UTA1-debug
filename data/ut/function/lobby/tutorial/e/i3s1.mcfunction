#By Nebulirion

execute at @e[tag=ray_flowey] positioned ^7 ^ ^1 facing entity @p[tag=tut_p] eyes run function ut:lobby/dummy/summon_strong
execute at @e[tag=ray_flowey] positioned ^4 ^ ^3 facing entity @p[tag=tut_p] eyes run function ut:lobby/dummy/summon_strong
execute at @e[tag=ray_flowey] positioned ^-4 ^ ^3 facing entity @p[tag=tut_p] eyes run function ut:lobby/dummy/summon_strong
execute at @e[tag=ray_flowey] positioned ^-7 ^ ^1 facing entity @p[tag=tut_p] eyes run function ut:lobby/dummy/summon_strong
execute at @e[tag=ray_flowey] positioned ^-4 ^ ^-2 facing entity @p[tag=tut_p] eyes run function ut:lobby/dummy/summon_moving
tag @e[tag=moving_p,limit=1,sort=random] remove moving_n
