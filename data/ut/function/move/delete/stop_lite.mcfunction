#By Nebulirion

#stuff reset
scoreboard players set @s unloadtime 22
scoreboard players set @s plt3 0

#clear entity
scoreboard players operation #user pid = @s pid
execute as @e[tag=delete] if score @s pid = #user pid run function ut:void
#
execute as @e[tag=hand] if score @s pid = #user pid run function ut:move/hand/state_restore

#effect
attribute @s generic.knockback_resistance modifier remove deletekbr
# attribute @s generic.gravity modifier remove deletefloat
effect clear @s levitation
tp @s @s

#dt reset
function ut:player/dt/reset

#tag reset
tag @s remove delete_rc
tag @s remove ray_find