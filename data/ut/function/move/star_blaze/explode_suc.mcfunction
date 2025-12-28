#By Nebulirion

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
particle explosion ~ ~ ~ 0 0 0 0 0 normal @a[scores={Q=2..}]

execute facing ^ ^1 ^ positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^ ^-1 ^ positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast

execute facing ^2.414 ^ ^-1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^-2.414 ^ ^-1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^2.414 ^ ^1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^-2.414 ^ ^1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^1 ^ ^2.414 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^1 ^ ^-2.414 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^-1 ^ ^2.414 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^-1 ^ ^-2.414 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast

execute facing ^1 ^1 ^1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^1 ^1 ^-1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^1 ^-1 ^1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^1 ^-1 ^-1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast

execute facing ^-1 ^1 ^1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^-1 ^1 ^-1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^-1 ^-1 ^1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast
execute facing ^-1 ^-1 ^-1 positioned ^ ^ ^1.2 if block ~ ~ ~ #ut:trans run function ut:move/star_small/cast

execute if entity @s[tag=!atker] run function ut:void