###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

tp @s ~ ~-.5 ~
execute at @s unless block ~ ~-1 ~ #ut:trans run function ut:move/dummy_mech/fall_to_land
execute at @s if score @s life matches 8.. run tp @s ~ ~-.5 ~
execute at @s if score @s life matches 8.. unless block ~ ~-1 ~ #ut:trans run function ut:move/dummy_mech/fall_to_land
execute at @s if score @s life matches 14.. run tp @s ~ ~-.5 ~
execute at @s if score @s life matches 14.. unless block ~ ~-1 ~ #ut:trans run function ut:move/dummy_mech/fall_to_land

#execute store result score @s y_pos run data get entity @s Pos[1] 100
#execute if score @s y_pos < -LowPos y_pos run function ut:move/dummy_mech/void
