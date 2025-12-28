#by Neb and SY91419 is kinda doing stuff too i guess

data modify storage ut:maps Rotation append from storage ut:maps Rotation[0] 
data remove storage ut:maps Rotation[0] 
data modify storage ut:maps Selected set from storage ut:maps Rotation[0]