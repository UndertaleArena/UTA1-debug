#By Nebulirion

#
#effect clear @s hunger
attribute @s generic.movement_speed modifier remove injectspeed
#
scoreboard players remove @s[tag=injected] move_loop 1
tag @s remove injected
function ut:move/_buffed/remove_status
#