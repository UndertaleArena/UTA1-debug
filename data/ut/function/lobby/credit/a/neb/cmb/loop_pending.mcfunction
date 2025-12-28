#By Nebulirion

scoreboard players operation cur life = @s life
scoreboard players operation cur life %= 20 damage

execute if score cur life matches ..9 run tp @s ~ ~0.05 ~
execute if score cur life matches 10.. run tp @s ~ ~-0.05 ~