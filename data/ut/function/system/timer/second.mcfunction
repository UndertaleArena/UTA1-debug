#By Nebulirion

scoreboard players add #gameSec game 1
scoreboard players add @a[tag=playing] gamesec 1
scoreboard players reset #timerSec timer
#
#scoreboard players add #timer60 timer 1
#execute if score #timer60 timer matches 3.. run function ut:system/timer/60
#
scoreboard players add #timer100 timer 1
execute if score #timer100 timer matches 5.. run function ut:system/timer/100
#
#scoreboard players add #timerMin timer 1
#execute if score #timerMin timer matches 60.. run function ut:system/timer/minute

#HomeBaseEvent
execute if score homeEvent gamerule matches 1.. run function ut:game/home/second
#

#
###
execute as @a[tag=playing] run function ut:move/passive/timer
#Win detection
function ut:game/win_detection
#Will
scoreboard players add #willTime timer 1
execute if score #willTime timer >= willSpeed gamerule run function ut:system/timer/will
#Inactivity Detection
execute if score inactiveGlow gamerule matches 1.. as @a[tag=playing,tag=!noglow] if score @s last_damage > inactiveGlow gamerule if score @s last_damaged > inactiveGlow gamerule run function ut:player/inactivity
###