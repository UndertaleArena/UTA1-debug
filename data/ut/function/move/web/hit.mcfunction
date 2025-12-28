###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
tag @s add target
scoreboard players operation #target pid = @s pid
###
scoreboard players set -web advancement 0
execute as @e[tag=jumppad_as] if score @s sid = #target pid run function ut:move/jumppad/webbed
execute if entity @s[tag=bomb_mtt_user] run function ut:move/bomb_mtt/stop
###
execute at @s as @e[tag=atker,limit=1] run function ut:move/web/hit_atker
tag @s remove target
###MAIN
function ut:move/hit/main