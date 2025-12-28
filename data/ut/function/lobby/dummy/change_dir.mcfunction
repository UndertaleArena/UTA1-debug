#By Nebulirion

tag @s[tag=moving_p] add moving_pp
tag @s[tag=moving_n] add moving_pn
tag @s[tag=moving_pn] add moving_p
tag @s[tag=moving_pn] remove moving_n
tag @s[tag=moving_pn] remove moving_pn
tag @s[tag=moving_pp] remove moving_p
tag @s[tag=moving_pp] add moving_n
tag @s[tag=moving_pp] remove moving_pp

execute if entity @s[tag=moving_p] run tp @s ~ ~ ~0.25 ~ ~1
execute if entity @s[tag=moving_n] run tp @s ~ ~ ~-0.25 ~ ~1