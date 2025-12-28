#Original By Nebulirion, SY edited

#score get
scoreboard players operation #user pid = @s pid
execute as @e[tag=hand_assist] if score @s pid = #user pid run tag @s add your_assist
execute store result score #temp store run execute if entity @e[tag=your_assist]

#kill score check
execute if score @s passive_timer matches 1 run scoreboard players set #check store -1

#assist clear
execute if score #check store matches -1 as @e[tag=your_assist] run function ut:void

#assist cast
execute unless score #check store matches -1 unless score #temp store matches 1 run function ut:move/hand/assist/cast



