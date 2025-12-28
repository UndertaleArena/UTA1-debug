#By Nebulirion

scoreboard players set #check hitcheck 0

function ut:move/hitbox/10x10x10

execute if score #check hitcheck matches 1 run tag @s add blaster_target