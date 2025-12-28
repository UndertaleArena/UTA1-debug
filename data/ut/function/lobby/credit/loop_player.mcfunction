#This function is actually just an empty function lol

#scoreboard players add @s move 1
execute if score @s move >= #checkInterval momentum run function ut:player/movetest
scoreboard players reset @s shift