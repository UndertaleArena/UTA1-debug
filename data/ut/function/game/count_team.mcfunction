#By Nebulirion

scoreboard players operation -this tid = @s tid
execute if entity @s[tag=counting_team] run scoreboard players add -TeamCount game 1
execute if entity @s[tag=counting_team] as @a[tag=counting_team] if score @s tid = -this tid run tag @s remove counting_team