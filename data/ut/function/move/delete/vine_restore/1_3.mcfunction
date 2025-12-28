#Original By Nebulirion, edited by SY

#score check 1~3
execute if score #temp store matches 1 run setblock ~ ~ ~ vine[east=true]
execute if score #temp store matches 2 run setblock ~ ~ ~ vine[south=true]
execute if score #temp store matches 3 run setblock ~ ~ ~ vine[east=true,south=true]