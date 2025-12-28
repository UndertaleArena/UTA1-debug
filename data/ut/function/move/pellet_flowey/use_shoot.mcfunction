#By Nebulirion

scoreboard players set @s unloadtime 12
scoreboard players remove @s[tag=attack_buffed] unloadtime 4
scoreboard players add @s mpcooldown 8
function ut:player/infight/use

execute store result score @s mpcost run data get entity @s SelectedItem.components."minecraft:custom_data".cost
scoreboard players set @s plt1 5
scoreboard players set @s plt1b 1

scoreboard players operation #user pid = @s pid

tag @s add pellets_user2