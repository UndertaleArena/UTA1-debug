#By Nebulirion
#this is about the idea person from the UTA production team minecraft id iloveYou0417
#Thank you so much for your help during the creation of this map!!!

execute if entity @e[tag=bluehome,limit=1,distance=0.3..] facing entity @e[tag=bluehome,limit=1] feet run tp @s ^ ^ ^0.2 ~ ~
execute unless entity @e[tag=bluehome,limit=1,distance=0.3..] run tp @s @e[tag=bluehome,limit=1]
