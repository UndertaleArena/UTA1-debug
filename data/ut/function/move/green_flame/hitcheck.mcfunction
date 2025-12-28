#By Nebulirion

scoreboard players set #check hitcheck 0
function ut:move/hitbox/16x16x16
execute if score #check hitcheck matches 1 run tag @s add green_flame_target