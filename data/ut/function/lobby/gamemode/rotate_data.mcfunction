#by Neb and SY91419 is kinda doing stuff too i guess

data modify storage ut:modes Rotation append from storage ut:modes Rotation[0] 
data remove storage ut:modes Rotation[0] 
data modify storage ut:modes Selected set from storage ut:modes Rotation[0]