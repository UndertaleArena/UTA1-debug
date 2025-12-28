#By Nebulirion

#execute if score #killingBlow damage matches 1 run title @s subtitle {"text":"kill!","color":"red"}

title @s subtitle ""

title @s title {"text":"\uEfe0","color":"white"}

#execute if score @s last_damage matches 1 run title @s title {"text":"\uEfe1","color":"white"}
#execute if score @s last_damage matches 2 run title @s title {"text":"\uEfe2","color":"white"}
#execute if score @s last_damage matches 3 run title @s title {"text":"\uEfe3","color":"white"}
#execute if score @s last_damage matches 4 run title @s title {"text":"\uEfe4","color":"white"}
#execute if score @s last_damage matches 5 run title @s title {"text":"\uEfe5","color":"white"}
#execute if score @s last_damage matches 6 run title @s title {"text":"\uEfe6","color":"white"}
#execute if score @s last_damage matches 7 run title @s title {"text":"\uEfe7","color":"white"}
#execute if score @s last_damage matches 8 run title @s title {"text":"\uEfe8","color":"white"}
#execute if score @s last_damage matches 9 run title @s title {"text":"\uEfe9","color":"white"}
#execute if score @s last_damage matches 10 run title @s title ""

title @s times 0 0 10

scoreboard players set @s title_timer 30
#execute if score @s last_damage matches 10 run title @s times 0 1 20