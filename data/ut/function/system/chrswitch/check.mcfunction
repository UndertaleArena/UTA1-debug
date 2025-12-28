#By Nebulirion

scoreboard players set #switching chr 0
execute unless items entity @s inventory.1 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 1
execute unless items entity @s inventory.2 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 2
execute unless items entity @s inventory.3 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 3
execute unless items entity @s inventory.4 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 4
execute unless items entity @s inventory.5 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 5
execute unless items entity @s inventory.6 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 6
execute unless items entity @s inventory.7 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 7
execute unless items entity @s inventory.10 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 8
execute unless items entity @s inventory.11 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 9
execute unless items entity @s inventory.12 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 10
execute unless items entity @s inventory.13 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 11
execute unless items entity @s inventory.14 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 13
execute unless items entity @s inventory.15 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 14
execute unless items entity @s inventory.16 carrot_on_a_stick[custom_data~{ischrswitch:1b}] run scoreboard players set #switching chr 15

execute if score #switching chr matches 1.. run function ut:system/chrswitch/switch_check