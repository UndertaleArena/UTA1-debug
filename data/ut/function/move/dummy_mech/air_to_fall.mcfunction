###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

data remove entity @s Pose

###EXTRA
tag @s add falling
tag @s remove inair
tag @s remove blockable
tag @s remove reflectable

#execute unless block ~ ~ ~ #ut:trans run say ???

execute if block ~ ~-1 ~ #ut:trans run tp @s ~ ~ ~ ~ 0
execute unless block ~ ~-1 ~ #ut:trans run function ut:move/dummy_mech/fall_to_land