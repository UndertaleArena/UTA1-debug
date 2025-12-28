#By Nebulirion
#this is about the idea person from the UTA production team minecraft id SY91419
#Thank you so much for your help during the creation of this 

function ut:lobby/credit/a/ak/l_ap


scoreboard players add cd credit 1

execute if score cd credit matches 1 run function ut:lobby/credit/a/ak/l_a4s

execute if score cd credit matches 21..30 run function ut:lobby/credit/a/ak/l_a5

execute if score cd credit matches 80 run function ut:lobby/credit/a/ak/l_a4r
