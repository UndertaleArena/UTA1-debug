#By Nebulirion
#this is about the idea person from the UTA production team minecraft id iloveYou0417
#Thank you so much for your help during the creation of this map!!!

execute facing entity @e[tag=credit_play,limit=1] feet rotated ~90 0 run tp @s ^ ^ ^0.2 ~-90 ~

scoreboard players add cd credit 1

execute if score cd credit = cdmax credit at @s positioned ^1.2 ^0.3 ^ run function ut:lobby/credit/a/blue/l_a3