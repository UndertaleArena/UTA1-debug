#Original By Nebulirion, edited by SY

#tag set
scoreboard players add @s[tag=!delete_user] move_loop 1
tag @s add dt_lock
tag @s add delete_user

#score set
scoreboard players set @s unloadtime 20

scoreboard players set @s plt3 80
scoreboard players operation @s plt3b = @s dtmax
scoreboard players operation @s plt3b /= @s plt3
scoreboard players set @s plt3 100

#disable hand
scoreboard players operation #user pid = @s pid
execute as @e[tag=hand] if score @s pid = #user pid run function ut:move/hand/disable/disable
execute as @e[tag=hand] if score @s pid = #user pid run scoreboard players set @s life 100

#sound and effects
playsound block.beacon.activate player @a ~ ~ ~ 1 1.6
particle dust{color:[.1,0.0,.3],scale:1} ~ ~1 ~ .4 .7 .4 1 66 normal @a[scores={Q=2..}]
effect give @s levitation 1 4 true