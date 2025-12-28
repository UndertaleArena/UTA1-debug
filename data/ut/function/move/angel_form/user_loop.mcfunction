#By Nebulirion
##

##
execute unless data entity @s SelectedItem.components."minecraft:custom_data".angelofdeath run function ut:move/angel_form/user_stop


#SCORE
execute store result score #new plt3b run data get entity @s Pos[1] 10000
scoreboard players operation motion store = #new plt3b
scoreboard players operation motion store -= @s plt3b
scoreboard players operation @s plt3b = #new plt3b

#execute if score @s plt3 matches 6 run attribute @s generic.knockback_resistance modifier add angelkbr 1.0 add_value

#execute if score @s plt3 matches 2 run effect clear @s levitation
#execute if score @s plt3 matches 2 run effect give @s levitation 1 5 true

#execute if score @s plt3 matches 3 run effect clear @s levitation
#execute if score @s plt3 matches 3 run effect give @s levitation 1 3 true

#execute if score @s plt3 matches 4 run effect clear @s levitation
#execute if score @s plt3 matches 4 run effect give @s levitation 1 1 true

execute if score @s plt3 matches 7 run effect clear @s levitation
execute if score @s plt3 matches 7 run effect give @s levitation 2 0 true
#execute if score @s plt3 matches 19 run function ut:move/angel_form/gravity1
#execute if score @s plt3 matches 20 run function ut:move/angel_form/gravity2

#execute if score @s plt3 matches 6 run effect clear @s levitation
#execute if score @s plt3 matches 6 run attribute @s generic.gravity modifier remove angelgrav
#execute if score @s plt3 matches 6 run attribute @s generic.gravity modifier add angelgrav -0.08 add_value

#
#function ut:move/effect/nojump/give
#
tag @s add angel_p
scoreboard players operation #this pid = @s pid
execute store result score #playerx rot run data get entity @s Rotation[0] 10000
execute store result score #playery rot run data get entity @s Rotation[1] 10000
execute if score @s plt3 matches 2.. as @e[tag=angel_wing] if score @s sid = #this pid run function ut:move/angel_form/loop
tag @s remove angel_p
#
scoreboard players add @s plt3 1
execute if score @s plt3 matches 49.. run function ut:move/angel_form/user_stop