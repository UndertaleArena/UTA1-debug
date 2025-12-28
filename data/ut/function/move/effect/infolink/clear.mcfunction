#By Nebulirion

scoreboard players reset @s hid
scoreboard players reset @s infolink_timer

scoreboard players remove @s[tag=effect_infolink] move_loop 1
tag @s remove effect_infolink

function ut:player/mp/change
function ut:player/melee/change