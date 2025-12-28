###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MAIN STUFF
data merge entity @s {Pose:{Head:[0f,0f,0f]}}

tag @s add landed
tag @s remove inair
tag @s remove blockable
tag @s remove reflectable
tag @s remove motion_prj

execute positioned ^ ^ ^-1 align y run tp @s ~ ~ ~ ~ 0
function ut:move/void/vapor_check