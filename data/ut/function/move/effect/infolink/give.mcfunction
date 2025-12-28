#By Nebulirion

scoreboard players set @s infolink_timer 100
scoreboard players add @s[tag=!effect_infolink] move_loop 1
tag @s add effect_infolink

function ut:player/mp/change
function ut:player/melee/change