#By Nebulirion

function ut:move/player_loop/cleardebuff

scoreboard players set @s immune_timer 60
scoreboard players add @s[tag=!effect_immune] move_loop 1
tag @s add effect_immune