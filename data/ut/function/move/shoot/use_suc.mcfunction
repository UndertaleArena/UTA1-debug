#By Nebulirion

#sound effect
playsound minecraft:block.ender_chest.open player @s ~ ~ ~ 1 2

#cooldown set
scoreboard players set @s unloadtime_2nd 26
scoreboard players remove @s[tag=attack_buffed] unloadtime_2nd 8
scoreboard players set @s unloadtime 2
scoreboard players add @s mpcooldown 22
function ut:player/infight/use

#shoot set
scoreboard players add @s plt1 16
#execute at @e[tag=hand_seek] run particle witch ~ ~ ~ .2 .2 .2 1 5 normal @a[scores={Q=2..}]
tag @e remove hand_seek