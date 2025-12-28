#By Nebulirion

###LOSE25
scoreboard players operation @s hp -= #voidpunish hp
function ut:player/hp/lose

#scoreboard players operation #lose will = @s will
#scoreboard players operation #lose will /= 4 const
#scoreboard players operation @s will -= #lose will
#function ut:player/will/lose

function ut:move/player_loop/fullstoplite

#Check if webbed
scoreboard players operation #self pid = @s pid
execute as @e[tag=move,tag=web] if score @s sid = #self pid run kill @s

###SAVESYOU
#tp @s ~ ~1 ~
#tp @s @s
function ut:move/effect/novoid/give
function ut:move/jumppad/cast_void

###DONTDIE
scoreboard players set #voiddeath store 0
