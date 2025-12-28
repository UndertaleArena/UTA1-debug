#By Nebulirion

#scoreboard players set @s talk_flowey 1

effect give @s[scores={N=0..}] minecraft:night_vision infinite 1 true
tag @s add tut_pw
execute unless score @s tutorial matches 2.. run scoreboard players set @s tutorial 2

tp @s @s

execute at @e[tag=tut_join] run tp @s ^ ^-39.5 ^-5 ~180 ~

execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1