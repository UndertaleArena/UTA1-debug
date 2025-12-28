#By Nebulirion

execute if score @s offset matches 100.. positioned ~ ~-1.5 ~ if entity @s[dx=1,dy=0.5,dz=1] at @s run function ut:move/trident/break/main
execute if score @s offset matches 1..100 positioned ~ ~-0.93 ~ if entity @s[dx=1,dy=0.5,dz=1] at @s run function ut:move/trident/break/main
execute unless score @s offset matches 1.. if entity @s[dx=1,dy=0.5,dz=1] at @s run function ut:move/trident/break/main
#