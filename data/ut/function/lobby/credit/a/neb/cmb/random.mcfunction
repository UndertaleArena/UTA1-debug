#By Nebulirion

execute positioned ^1 ^-.5 ^3 run function ut:move/random/cast
execute positioned ^1 ^ ^1 run function ut:move/random/cast
execute positioned ^3 ^ ^1 run function ut:move/random/cast
execute positioned ^3 ^.5 ^-1 run function ut:move/random/cast
execute positioned ^1 ^.5 ^-1 run function ut:move/random/cast
execute positioned ^1 ^1 ^-3 run function ut:move/random/cast
tag @e[tag=random_as] add random_as_l

execute positioned ^-1 ^-.5 ^3 run function ut:move/random/cast
execute positioned ^-1 ^ ^1 run function ut:move/random/cast
execute positioned ^-3 ^ ^1 run function ut:move/random/cast
execute positioned ^-3 ^.5 ^-1 run function ut:move/random/cast
execute positioned ^-1 ^.5 ^-1 run function ut:move/random/cast
execute positioned ^-1 ^1 ^-3 run function ut:move/random/cast