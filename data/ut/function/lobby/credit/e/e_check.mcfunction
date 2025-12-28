#hi

scoreboard players operation cur credit = @s credit
scoreboard players operation cur credit %= 4 const

execute if score cur credit matches 1 run tag @s add cname_g1
execute if score cur credit matches 2 run tag @s add cname_g2
execute if score cur credit matches 3 run tag @s add cname_g3
execute if score cur credit matches 0 run tag @s add cname_g4