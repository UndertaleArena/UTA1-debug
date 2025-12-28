#By Nebulirion

#score removal
scoreboard players remove @s lifetime 1

#randomizer
execute at @e[type=marker,tag=mng_dummy,limit=1] run spreadplayers ~-12 ~-12 1 16 under 142 false @s

#check block
execute at @s if block ~ ~-1 ~ purple_wool run function ut:lobby/minis/dummy/move/dummy/move/target
execute if score @s lifetime matches ..0 run function ut:lobby/minis/dummy/move/dummy/move/target
execute at @s unless block ~ ~-1 ~ purple_wool if entity @s[tag=dummy_locating] if score @s lifetime matches 1.. run function ut:lobby/minis/dummy/move/dummy/move/rand
