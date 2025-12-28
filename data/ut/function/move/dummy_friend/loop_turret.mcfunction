###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

scoreboard players add @s life2 1
execute if score @s life2 matches 1..10 if score @s life2 matches 3..8 run tp @s ~ ~0.03 ~
execute if score @s life2 matches 1..10 unless score @s life2 matches 3..8 run tp @s ~ ~0.015 ~
execute if score @s life2 matches 16..25 if score @s life2 matches 18..23 run tp @s ~ ~-0.03 ~
execute if score @s life2 matches 16..25 unless score @s life2 matches 18..23 run tp @s ~ ~-0.015 ~
execute if score @s life2 matches 30 run scoreboard players reset @s life2

tag @s add dummying
scoreboard players operation #this pid = @s pid
execute as @a[tag=playing] if score @s pid = #this pid run function ut:move/dummy_friend/loop_turret_pcheck

scoreboard players add @s life 1
execute if score #toofar5 plt1 matches 1 run scoreboard players add @s life 9
execute if score @s life matches 200.. run function ut:move/dummy_friend/void

execute if entity @e[type=armor_stand,tag=dummy_friend,tag=!dummying,distance=..0.8] facing entity @e[type=armor_stand,tag=dummy_friend,tag=!dummying,sort=nearest,limit=1] feet rotated ~180 ~ positioned ^ ^ ^0.2 if block ~ ~ ~ #ut:trans run tp @s ^ ^ ^
tag @s remove dummying

scoreboard players add @s plt1 1
execute if score @s plt1 matches 0 run function ut:move/dummy_friend/shoot