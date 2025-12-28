#By Nebulirion

tag @s remove fall_slimed
tag @s remove king_fall
# remove falling attribute incase of some issue
attribute @s minecraft:generic.gravity modifier remove ut:kingfall
tp @s @s

function ut:move/void/vapor_check
execute if score #isVoid store matches 0 run function ut:move/king/landing_success