#By Nebulirion

####prj
tag @s add effect_sadness
#
scoreboard players operation @s range /= 4 const
#
scoreboard players operation @s speed /= 4 const
execute unless score @s speed matches 1.. run function ut:void

