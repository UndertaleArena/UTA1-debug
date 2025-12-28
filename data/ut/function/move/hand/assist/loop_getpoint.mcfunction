#Original By Nebulirion, SY edited

#init data
execute as @p[tag=hand_user] at @s anchored eyes rotated as @s run tp @e[tag=assist_use] ^ ^ ^.5 ~ ~
scoreboard players set -distance ray_distance 32
scoreboard players operation #user tid = @s tid

#state check
execute at @s anchored eyes run function ut:move/hand/assist/ray

#store position info for hand check
execute store result score @s y_pos run data get entity @s Pos[1] 100