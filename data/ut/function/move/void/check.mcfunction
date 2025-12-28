
#Setup
scoreboard players set #isVoid store 0

#Get own height
execute store result score #self y_pos run data get entity @s Pos[1] 100

#Special Zones: -5 void height
execute if block ~ 0 ~ lapis_block run scoreboard players add #self y_pos 500

#Compare
execute if score #self y_pos < -LowPos y_pos at @s run scoreboard players set #isVoid store 1