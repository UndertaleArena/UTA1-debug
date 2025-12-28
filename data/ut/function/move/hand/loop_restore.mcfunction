#Original By Nebulirion, SY edited

#score remove
execute if entity @a[tag=hand_user,distance=..3] run scoreboard players remove @s life 1

#move to user
function ut:move/hand/move/follow

#state restore check
execute unless score @s life matches 1.. run function ut:move/hand/state_restore