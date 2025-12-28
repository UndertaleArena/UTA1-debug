#By Nebulirion

function ut:player/actionbar/new
#
execute if score @s title_timer matches 1.. run scoreboard players remove @s title_timer 1
#