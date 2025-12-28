#By Nebulirion

###PARTICLE
particle item{item:clay} ^ ^-.1 ^-.6 .2 0 .2 0.01 1 normal @a[scores={Q=3..}]
###WALK STRAIGHT
execute if score #y_diff dog matches -1..0 run tp @s ~ ~ ~

###Y = -1
#execute if score #y_diff dog matches -1 run tp @s ~ ~-.2 ~

###Y = 1
execute if score #y_diff dog matches 1 run tp @s ~ ~1 ~
