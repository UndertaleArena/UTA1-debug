#

scoreboard players set @s border -100
execute if entity @s[tag=playing,tag=!respawning] run function ut:game/border/player_test
function ut:game/border/draw/main_0
execute if score @s[tag=playing,tag=!respawning] border matches 1.. run scoreboard players add @s border_timer 1
execute if score @s[tag=playing,tag=!respawning] border_timer matches 20.. run function ut:game/border/damage