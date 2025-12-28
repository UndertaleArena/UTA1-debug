#By Nebulirion

execute if entity @s[tag=!prep] at @s anchored eyes positioned ^ ^-.4 ^ run function ut:move/gaster_blaster/blast

#infinite
#execute if score @s life matches 52.. run scoreboard players set @s life 30

#end
scoreboard players add @s life 1
execute if score @s[tag=!prep] life matches 70.. run function ut:move/gaster_blaster/skull_end