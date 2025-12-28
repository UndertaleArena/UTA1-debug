#By Nebulirion

tag @s add dummy_user
scoreboard players operation #user pid = @s pid

execute anchored eyes rotated ~ 0 run function ut:move/dummy_friend/turrent_cast

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{dummy_charge:1b,is_knife:1b}}}] run function ut:move/dummy_charge/display_d

scoreboard players set #delay plt1 0

execute anchored eyes run summon marker ^ ^-1.2 ^24 {Tags:[aim_helper]}

scoreboard players set #limit plt1 0
execute as @e[tag=dummy_friend,tag=turret] if score @s pid = #user pid run function ut:move/dummy_friend/use_turret

#LIMIT
execute unless entity @s[tag=attack_buffed] if score #limit plt1 matches 7.. as @e[tag=dummy_friend_check,limit=1] at @s run function ut:move/dummy_friend/void
execute if entity @s[tag=attack_buffed] if score #limit plt1 matches 10.. as @e[tag=dummy_friend_check,limit=1] at @s run function ut:move/dummy_friend/void

#
execute as @e[tag=dummy_friend_check] positioned as @s facing entity @e[type=marker,tag=aim_helper,limit=1] feet run function ut:move/dummy_friend/shoot_pre
tag @e remove dummy_friend_check

kill @e[type=marker,tag=aim_helper]

tag @s remove dummy_user

scoreboard players set @s unloadtime 10
scoreboard players remove @s[tag=attack_buffed] unloadtime 2
scoreboard players set @s mpcooldown 4
function ut:player/infight/use