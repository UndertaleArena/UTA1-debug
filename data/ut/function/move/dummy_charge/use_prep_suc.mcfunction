#By Nebulirion

playsound minecraft:item.crossbow.loading_start player @s ~ ~ ~ 1.2 1.5

scoreboard players set #id plt2b 0
execute if entity @e[tag=dummy_charging,tag=dummy_friend] run playsound minecraft:item.crossbow.quick_charge_1 player @a ~ ~ ~ 1.6 0.85
execute as @e[tag=dummy_charging,tag=dummy_friend] rotated ~ 0 anchored eyes positioned ^ ^0.93 ^ run function ut:move/dummy_friend/turret_to_prepare
scoreboard players operation @s plt2b = #id plt2b


scoreboard players set @s cdcooldown 2
scoreboard players set @s unloadtime 10

attribute @s generic.movement_speed modifier add dummychargeslow -0.8 add_multiplied_total

scoreboard players set @s plt1 30

#scoreboard players set @s cddis 1
scoreboard players add @s[tag=!dummy_charge_user] move_loop 1
tag @s add dummy_charge_user