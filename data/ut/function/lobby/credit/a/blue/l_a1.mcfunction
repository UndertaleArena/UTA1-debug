#By Nebulirion
#this is about the idea person from the UTA production team minecraft id SY91419
#Thank you so much for your help during the creation of this map!!!

execute facing entity @e[tag=credit_play,limit=1] feet rotated ~90 0 run tp @s ^ ^0.02 ^0.01 ~-90 ~

execute if score @s credit matches 31 run data merge entity @s {Pose:{LeftArm:[0f,0f,300f]}}

particle cloud ~ ~-.1 ~ 0.05 0 0.05 0.01 0 normal @a[scores={Q=1..}]