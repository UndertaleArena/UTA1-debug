#Original By Nebulirion, SY edited

#tag yourself
tag @s add hand_curr

#find player
scoreboard players operation #user pid = @s pid
execute as @a[tag=playing,tag=!respawning,tag=passive_default] if score @s pid = #user pid run tag @s add hand_user

#delete or loop state
execute if entity @a[tag=hand_user] run function ut:move/hand/loop_state
execute unless entity @a[tag=hand_user] run function ut:void

#tag removing
tag @a remove hand_user
tag @s remove hand_curr