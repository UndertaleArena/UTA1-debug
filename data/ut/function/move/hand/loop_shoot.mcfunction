#Original By Nebulirion, SY edited

#particle cast
execute at @e[tag=select_hand,tag=!disable] run particle smoke ~ ~ ~ .1 .1 .1 0 2 normal @a[scores={Q=3..}]

#shoot check
scoreboard players operation #check store = @s plt1
scoreboard players operation #check store %= 3 const

#speed setting
scoreboard players operation #this prj_speed = @s prj_speed
scoreboard players operation #this atk = @s atk

#cast shoot bullet
execute if score #check store matches 0 as @e[tag=select_hand,tag=!disable] at @s rotated as @a[tag=hand_user,limit=1] run function ut:move/hand/loop_shoot_cast

#score remove
scoreboard players remove @s plt1 1

#back to normal
execute if score @s plt1 matches ..0 run scoreboard players reset @s plt1