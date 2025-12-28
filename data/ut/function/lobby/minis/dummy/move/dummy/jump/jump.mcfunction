#Originally made by Nebulirion, edited by SY91419

#state change
execute if block ~ ~ ~ red_wool run function ut:lobby/minis/dummy/move/dummy/jump/pop
execute if entity @s[nbt={OnGround:1b}] run function ut:lobby/minis/dummy/move/dummy/jump/stand
