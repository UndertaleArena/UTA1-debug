#By Nebulirion

#Gamemodes
data modify storage ut:modes Data set value []
data modify storage ut:modes Data append value {Id:1,Name:'{"translate":"las.gamemode.1"}'}
data modify storage ut:modes Data append value {Id:2,Name:'{"translate":"las.gamemode.2"}'}
data modify storage ut:modes Data append value {Id:3,Name:'{"translate":"las.gamemode.3"}'}
data modify storage ut:modes Data append value {Id:4,Name:'{"translate":"las.gamemode.4"}'}
data modify storage ut:modes Data append value {Id:5,Name:'{"translate":"las.gamemode.5"}'}
data modify storage ut:modes Data append value {Id:6,Name:'{"translate":"las.gamemode.6"}'}
data modify storage ut:modes Data append value {Id:7,Name:'{"translate":"las.gamemode.7"}'}
data modify storage ut:modes Data append value {Id:0,Name:'{"translate":"las.gamemode.0"}'}

data modify storage ut:modes Rotation set from storage ut:modes Data
data modify storage ut:modes Selected set from storage ut:modes Data[0]
execute store result score -count gamemode if data storage ut:modes Data[]