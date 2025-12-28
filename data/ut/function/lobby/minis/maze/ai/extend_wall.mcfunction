#By Nebulirion

scoreboard players set -foundyellow maze_timer 1
summon marker ~ ~ ~ {Tags:[maze_marker,maze_wall]}
setblock ~ ~ ~ red_stained_glass

#execute store result score -wallcount maze_timer if entity @e[tag=maze_wall]
#execute if score -wallcount maze_timer matches 4.. run kill @e[tag=maze_wall,limit=1]