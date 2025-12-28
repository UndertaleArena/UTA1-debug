#Original by Nebulirion, SY edited

#score store
scoreboard players operation #temp store = @p[tag=hand_user] passive_timer

#loop state check
execute if score #temp store matches 2 run function ut:move/hand/assist/loop_rotate
execute if score #temp store matches 3 run function ut:move/hand/assist/loop_getpoint