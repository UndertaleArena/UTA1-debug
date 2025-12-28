###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

function ut:move/_speed/_/0_63
scoreboard players operation #temp speed = #this speed
scoreboard players operation #stop speed = #temp speed
function ut:lobby/minis/dummy/move/bone/_sys/movement_step