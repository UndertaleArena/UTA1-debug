#Original By Nebulirion, SY edited

#get state
scoreboard players operation #temp store = @a[tag=hand_user] passive_timer

#state thing check
execute if entity @s[tag=!disable] run function ut:move/hand/loop_move
execute if score @s[tag=disable] life matches 1.. run function ut:move/hand/loop_restore

#stack prevent
function ut:move/hand/move/nostack

#come back check
execute store result score @s y_pos run data get entity @s Pos[1] 100
execute if score @s y_pos matches ..0 run function ut:move/hand/disable/lowest
execute if entity @a[tag=hand_user,distance=36..128] run function ut:move/hand/disable/far_away
execute if entity @a[tag=hand_user,distance=128..] run function ut:move/hand/disable/broken

#score reset stuff
scoreboard players reset @s y_pos