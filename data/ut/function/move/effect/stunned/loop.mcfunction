#By Nebulirion
#
scoreboard players set @s unloadtime 10
function ut:player/infight/damaged
#
execute anchored eyes run particle crit ^ ^ ^0.5 0.25 0.25 0.25 0 1 force @s[scores={Q=1..}]
particle crit ~ ~1 ~ .25 .5 .25 0.1 1 normal @a[scores={Q=1..}]
#
function ut:move/effect/nojump/give
#
scoreboard players remove @s stun_timer 1
execute unless score @s stun_timer matches 1.. run function ut:move/effect/stunned/clear