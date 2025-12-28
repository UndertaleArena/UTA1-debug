#By Nebulirion

execute rotated ~ -60 run tp @s ^ ^ ^0.6 ~20 ~
particle minecraft:cloud ~ ~0.6 ~ 0.1 0.1 0.1 0.02 1 force @a[scores={Q=1..}] 
particle dust{color:[1,1,0],scale:1} ~ ~0.6 ~ 0.2 0.2 0.2 0 2 normal @a[scores={Q=3..}] 

scoreboard players add @s life 1
execute if score @s life > @s lifetime run kill @s