#Original By Nebulirion, SY edited

#score set
scoreboard players set @s y_pos 150
scoreboard players operation @s y_pos += @a[tag=hand_user,limit=1] y_pos

#position extra
execute if score #temp store matches 1 if score @s passive_timer matches 3..6 run function ut:move/hand/move/vertical_offset

#value store back
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s y_pos