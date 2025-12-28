#By Nebulirion

execute if score homeEvent gamerule matches 1.. if block ~ ~ ~ #ut:trans run function ut:game/home/display/diamond/carpet
execute unless score homeEvent gamerule matches 1.. if block ~ ~ ~ #minecraft:carpets run function ut:game/home/display/diamond/restore
