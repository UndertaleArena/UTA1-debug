#By Nebulirion

particle end_rod ^ ^.5 ^-.5 0 0 0 0 0

tp @s ^ ^ ^.5 ~5 ~
execute if entity @a[tag=boss,limit=1,distance=16..] at @s run tp @s ^ ^ ^.5 ~5 ~
execute if entity @a[tag=boss,limit=1,distance=32..] at @s run tp @s ^ ^ ^.5 ~5 ~
execute if entity @a[tag=boss,limit=1,distance=48..] at @s run tp @s ^ ^ ^.5 ~5 ~

execute if entity @a[tag=boss,limit=1,distance=..3] run kill @s
execute if entity @a[tag=boss,limit=1,distance=..3] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 25 normal @a[scores={Q=3..}]