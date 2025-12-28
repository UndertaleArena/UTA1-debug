#Original By Nebulirion, SY edited

#tag self
tag @s add assist_use

#get user
scoreboard players operation #user pid = @s pid
execute as @a[tag=playing] if score @s pid = #user pid run tag @s add hand_user
execute store success score #suc store if entity @a[tag=hand_user,tag=hand_rev]
scoreboard players set @s passive_timer 2
execute if entity @a[tag=hand_user,tag=attack_buffed] run scoreboard players add @s passive_timer 4

#loop type
execute if entity @a[tag=hand_user,limit=1] run function ut:move/hand/assist/loop_state

#kill check
execute unless entity @a[tag=hand_user,limit=1] run function ut:void

#find hand for rev
execute as @e[tag=hand,tag=move] if score @s pid = #user pid if score #suc store matches 1 run tag @s add hand_rev

#tag reset
tag @a[tag=hand_user] remove hand_rev
tag @a[tag=hand_user] remove hand_user
tag @s remove assist_use

#particle dust{color:[1,0,0],scale:1} ~ ~ ~ 0 0 0 0 1