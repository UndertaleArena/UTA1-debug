# by SY91419

# reset shield score
scoreboard players reset @s shield

# check if extra affects
#say Check THIS
execute if entity @s[tag=passive_muffet_shield] run function ut:move/passive/muffet/trigger