#hi

scoreboard players operation cur credit = @s credit
scoreboard players operation cur credit %= 2 const

execute if score cur credit matches 0 run tag @s add cname_even
execute if score cur credit matches 1 run tag @s add cname_odd