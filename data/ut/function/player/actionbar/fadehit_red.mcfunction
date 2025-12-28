#By Nebulirion

execute if score @s last_damage matches 0 run title @s title {"text":"\uEfd0","color":"white"}
execute if score @s last_damage matches 1 run title @s title {"text":"\uEfd1","color":"white"}
execute if score @s last_damage matches 2 run title @s title {"text":"\uEfd2","color":"white"}
execute if score @s last_damage matches 3 run title @s title {"text":"\uEfd3","color":"white"}
execute if score @s last_damage matches 4 run title @s title {"text":"\uEfd4","color":"white"}
execute if score @s last_damage matches 5 run title @s title {"text":"\uEfd5","color":"white"}
execute if score @s last_damage matches 6 run title @s title {"text":"\uEfd6","color":"white"}
execute if score @s last_damage matches 7 run title @s title {"text":"\uEfd7","color":"white"}
execute if score @s last_damage matches 8 run title @s title {"text":"\uEfd8","color":"white"}
execute if score @s last_damage matches 9 run title @s title {"text":"\uEfd9","color":"white"}

title @s times 0 10 0
execute if score @s last_damage matches 9.. run title @s times 0 1 0