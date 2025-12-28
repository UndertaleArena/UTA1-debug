
#Setup
scoreboard players set #isVoid store 0

#Get own height
execute store result score #self y_pos run data get entity @s Pos[1] 100
scoreboard players operation #self y_pos += @s offset

#Special Zones: -5 void height
execute if block ~ 0 ~ lapis_block run scoreboard players add #self y_pos 500

#Compare
execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-.5 ~ run function ut:move/void/vapor_check2

execute if score #self y_pos < -LowPos y_pos run tag @s add dust_pile_norevive