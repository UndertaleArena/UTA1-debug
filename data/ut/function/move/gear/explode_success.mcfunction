#By Nebulirion

playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 1.5 1.2
execute positioned ~ ~ ~ run particle block{block_state:netherite_block} ~ ~ ~ .9 .9 .9 0.05 120 normal @a[scores={Q=1..}]

execute align y positioned ~ ~.2 ~ rotated ~60 -25 positioned ^ ^ ^0 run function ut:move/dummy_mech/cast
execute align y positioned ~ ~.2 ~ rotated ~180 -25 positioned ^ ^ ^0 run function ut:move/dummy_mech/cast
execute align y positioned ~ ~.2 ~ rotated ~-60 -25 positioned ^ ^ ^0 run function ut:move/dummy_mech/cast