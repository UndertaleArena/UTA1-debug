#By Nebulirion


tag @s add atker
scoreboard players operation #atker aid = @s aid
particle cloud ~ ~1 ~ 0.3 0.3 0.3 0.3 100 normal @a[scores={Q=2..}]
execute as @a[tag=in_cupcake] if score @s cid = #atker aid rotated ~ 0 positioned ^ ^0.2 ^ run function ut:move/cupcake/stop_player
tag @s remove atker

kill @s