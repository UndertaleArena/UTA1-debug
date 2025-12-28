#By Nebulirion

#say hi
#
scoreboard players operation #gain dt = #damage damage
scoreboard players operation #gain will = #damage damage
scoreboard players set #true_damage damage 0
scoreboard players set #damage damage 0

scoreboard players operation #lose will *= 2 const