#By Nebulirion

scoreboard players operation #this aid = @s aid
execute at @s as @e[tag=dog_model,type=husk] if score @s aid = #this aid positioned ~ ~-0.6 ~ facing entity @s feet facing ^ ^ ^-1 run tp @s ^ ^ ^ ~ ~