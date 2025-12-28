#By Nebulirion

execute if entity @s[tag=!effect_infolink] if score @s mp > @s mpmax run scoreboard players operation @s mp = @s mpmax
execute if entity @s[tag=effect_infolink] run function ut:move/effect/infolink/mpchange