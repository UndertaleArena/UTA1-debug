#By Nebulirion

execute if entity @s[tag=jumppad_void] run tag @a[tag=jumppad_p,limit=1] remove effect_novoid_inair

effect clear @a[tag=jumppad_p] slow_falling

tp @a[tag=jumppad_p,limit=1] ~ ~ ~
tp @a[tag=jumppad_p,limit=1] @a[tag=jumppad_p,limit=1]
kill @s