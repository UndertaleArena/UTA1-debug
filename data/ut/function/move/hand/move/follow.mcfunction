#Original By Nebulirion, SY edited

#move back
execute as @p[tag=hand_user] if entity @s[distance=3..] if score @s plt1 matches 1.. facing entity @s eyes run tp @e[tag=hand_curr] ^ ^ ^.35
execute as @p[tag=hand_user] if entity @s[distance=3..] unless score @s plt1 matches 1.. facing entity @s eyes run tp @e[tag=hand_curr] ^ ^ ^.35 ~ ~

#following
execute if entity @a[tag=hand_user,limit=1,distance=..3] positioned as @a[tag=hand_user,limit=1] rotated as @a[tag=hand_user,limit=1] run function ut:move/hand/move/follow_pos

#ypos setting
execute if entity @a[tag=hand_user,limit=1,distance=..3] run function ut:move/hand/move/vertical