#By Nebulirion

execute if entity @s[tag=captured] run function ut:move/dog/loop_cap
execute unless entity @s[tag=captured] run function ut:move/dog/loop_free