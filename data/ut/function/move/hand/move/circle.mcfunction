#Original By Nebulirion, SY edited

#get hand position
execute if entity @a[tag=hand_user,limit=1,distance=..3] as @e[tag=assist_use] at @s run function ut:move/hand/assist/circle_pos

#back check
##move back stuck
execute unless entity @a[tag=hand_user,distance=..3] facing entity @a[tag=hand_user,limit=1] eyes unless block ^ ^ ^.5 #ut:trans run tag @s add stuck
##slow go back
execute unless entity @a[tag=hand_user,distance=..3] facing entity @a[tag=hand_user,limit=1] eyes if block ^ ^ ^.5 #ut:trans run tp @s ^ ^ ^.5 ~ ~

#do face
execute at @s rotated as @a[tag=hand_user,limit=1] run tp @s ~ ~ ~ ~ ~

#vertical move
function ut:move/hand/move/vertical