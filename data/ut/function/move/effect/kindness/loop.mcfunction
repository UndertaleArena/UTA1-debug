#By Nebulirion

function ut:move/effect/kindness/heal

scoreboard players remove @s kindness_timer 1
execute unless score @s kindness_timer matches 1.. run function ut:move/effect/kindness/clear