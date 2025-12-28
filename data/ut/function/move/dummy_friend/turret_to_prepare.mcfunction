###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

scoreboard players add #id plt2b 1
execute if score #id plt2b matches 1 positioned ^0.0 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute if score #id plt2b matches 2 positioned ^0.7 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute if score #id plt2b matches 3 positioned ^1.4 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute if score #id plt2b matches 4 positioned ^2.1 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute if score #id plt2b matches 5 positioned ^2.8 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute if score #id plt2b matches 6 positioned ^3.5 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute if score #id plt2b matches 7 positioned ^4.2 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute if score #id plt2b matches 8 positioned ^4.9 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute if score #id plt2b matches 9 positioned ^5.6 ^0.4 ^1.2 rotated ~ -90 run function ut:move/dummy_friend/cast
execute at @s run particle dust{color:[0.675,0.278,0.243],scale:1} ~ ~.5 ~ 0.15 0.2 0.15 0.01 20 normal @a[scores={Q=2..}]
function ut:void
