#By Nebulirion

scoreboard players remove @s life2 50

playsound entity.blaze.shoot player @a ~ ~ ~ .5 1.2

particle flame ^0.4 ^ ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^ ^0.4 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^-0.4 ^ ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^0.4 ^ ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^ ^-0.4 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^.36 ^0.16 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^0.16 ^.36 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^-0.16 ^.36 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^-.36 ^0.16 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^.36 ^-0.16 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^0.16 ^-.36 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^-0.16 ^-.36 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]
particle flame ^-.36 ^-0.16 ^ 0 0 0 0 0 normal @a[scores={Q=3..}]

#
execute facing ^-1 ^ ^-1 positioned ^ ^ ^1 run function ut:move/firehand_ball/cast
#
execute facing ^1 ^ ^-1 positioned ^ ^ ^1 run function ut:move/firehand_ball/cast