#By Nebulirion

###
scoreboard players remove #red hp 1
data modify storage hp Bar.temp append value "§c┃"
data modify storage hp Bar.temp append value '{"text":"\\u200c","font":"space:default"}'
#data modify storage hp Bar.temp append value ""
execute if score #red hp matches 1.. run function ut:player/hp/bar/loop_r