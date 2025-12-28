#By Nebulirion

execute at @e[tag=ray_flowey] positioned ^5 ^ ^-2 facing entity @p[tag=tut_p] eyes run function ut:lobby/dummy/summon
execute at @e[tag=ray_flowey] positioned ^-5 ^ ^-2 facing entity @p[tag=tut_p] eyes run function ut:lobby/dummy/summon
execute at @e[tag=ray_flowey] positioned ^-3 ^ ^3 rotated 90 ~ run function ut:lobby/dummy/summon_moving
execute at @e[tag=ray_flowey] positioned ^3 ^ ^4 rotated 90 ~ run function ut:lobby/dummy/summon_moving
tag @e[tag=moving_p,limit=1,sort=random] remove moving_n
tag @e[tag=moving_n] remove moving_p