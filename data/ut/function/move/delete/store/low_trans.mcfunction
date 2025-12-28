#Original By Nebulirion, edited by SY

##this function is getting the lowest point
##not yet tp, but store score to #min y_pos

#check trans count
function ut:move/delete/check_trans_25

#tellraw @a ["Current level:",{"score":{"objective":"y_pos","name":"@s"}},"; air count: ",{"score":{"objective":"store","name":"#temp"}}]

#check 4th level of low best
execute if score @s ray_distance matches 20.. if score #temp store <= #check store run scoreboard players operation #min y_pos = @s y_pos
execute if score @s ray_distance matches 20.. if score #temp store <= #check store run scoreboard players operation #check store = #temp store

#check the lower place
execute unless score @s ray_distance matches 20.. if score #temp store < #check store run scoreboard players operation #min y_pos = @s y_pos
execute unless score @s ray_distance matches 20.. if score #temp store < #check store run scoreboard players operation #check store = #temp store

#zero check
execute if score #temp store matches 0 run scoreboard players add #zero store 1
execute unless score #temp store matches 0 run scoreboard players set #zero store 0

#ray stop
execute unless score @s ray_distance matches 20.. if score #zero store matches 3.. run scoreboard players set @s ray_distance 0
execute if score @s ray_distance matches 20.. if score #zero store matches 4.. run scoreboard players set @s ray_distance 0

#ray stop y pos
#execute unless score @s ray_distance matches 20.. if score #zero store matches 3.. run scoreboard players operation #min y_pos = @s y_pos
#execute if score @s ray_distance matches 20.. if score #zero store matches 4.. run scoreboard players operation #min y_pos = @s y_pos