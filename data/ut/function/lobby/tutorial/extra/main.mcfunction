#By Nebulirion 08/17/2020 bad day bc bad

scoreboard players set @s talk_flowey 1
scoreboard players add @s flowey_extra 1

execute if score @s flowey_extra matches 1 run tellraw @s "hi!"
execute if score @s flowey_extra matches 2 run tellraw @s "hi again!"