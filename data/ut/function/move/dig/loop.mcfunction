#By Nebulirion

tag @s add dig_p
scoreboard players operation -this pid = @s pid
execute as @e[tag=dig_use,type=armor_stand] if score @s sid = -this pid run tag @s add dig_inuse

scoreboard players remove @s plt2 1
execute if score @s plt2 matches 12.. run function ut:move/dig/loop1
execute if score @s plt2 matches 12 run function ut:move/teleport
execute if score @s plt2 matches ..11 run function ut:move/dig/loop3

tag @e[tag=dig_inuse] remove dig_inuse
tag @s remove dig_p