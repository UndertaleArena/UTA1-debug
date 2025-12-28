#Originally made by Nebulirion, edited by SY91419

#entity change
###position change
execute rotated as @s align xyz run tp @s ~.5 ~9 ~.5 ~ ~
###data modifying
data modify entity @s NoGravity set value 0b
data modify entity @s Motion[1] set value 0.6d
data modify entity @s OnGround set value 0b