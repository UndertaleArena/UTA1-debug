#By Nebulirion
#players

execute if score @s newborn matches 1 run function ut:player/born

function ut:lobby/minis/maze/leave
function ut:lobby/tutorial/leave
function ut:lobby/credit/leave

tellraw @s [{"translate":"pfx.game"},{"translate":"cht.gm6"}]

tp @s @e[tag=lobby_center,limit=1]
execute unless entity @e[tag=lobby_center] run tp @s 272 153.5 1280
tag @s remove playing

title @s title ""
title @s subtitle ""

title @s actionbar ""
gamemode adventure @s
stopsound @s

scoreboard players set @s talk_flowey 0
scoreboard players reset @s frog_talk 
scoreboard players reset @s frogfilter 

attribute @s generic.movement_speed modifier remove 00000000-0000-0000-0001-000000000025
attribute @s generic.movement_speed modifier remove 00000000-0000-0000-0001-000000000021
attribute @s generic.movement_speed modifier remove 00000000-0000-0000-0001-000000000017
attribute @s generic.movement_speed modifier remove 00000000-0000-0000-0001-000000000013
attribute @s generic.movement_speed modifier remove 00000000-0000-0000-0001-000000000009
attribute @s generic.knockback_resistance modifier remove 00000011-0000-0000-0005-000000000100
attribute @s generic.movement_speed modifier remove 00000001-0000-0000-0002-000000000000
attribute @s generic.knockback_resistance modifier remove 00000001-0000-0000-0005-000000000100
attribute @s generic.knockback_resistance modifier remove 00000024-0000-0000-0005-000000000100
attribute @s generic.movement_speed modifier remove 00000002-0000-0000-0002-000000000000
attribute @s generic.knockback_resistance modifier remove 00000002-0000-0000-0005-000000000100
attribute @s generic.movement_speed modifier remove 00000004-0000-0017-0002-000000000000
attribute @s generic.movement_speed modifier remove 00000008-0000-0000-0003-000000000000
attribute @s generic.movement_speed modifier remove 00000020-0004-0000-0003-000000000000
attribute @s generic.movement_speed modifier remove 00000000-0856-0000-0001-000000000001
attribute @s generic.movement_speed modifier remove 00000000-0856-0000-0001-000000000002
attribute @s generic.movement_speed modifier remove 00000000-0856-0000-0001-000000000003
attribute @s generic.movement_speed modifier remove 00000000-0856-0000-0001-000000000004
attribute @s generic.movement_speed modifier remove 00000000-0856-0000-0001-000000000005
attribute @s generic.knockback_resistance modifier remove 00000033-0000-0000-0005-000000000100
attribute @s generic.movement_speed modifier remove 00000009-0000-0000-0002-000000000000
attribute @s generic.knockback_resistance modifier remove 00000008-0000-0000-0005-000000000100
attribute @s generic.movement_speed modifier remove 00000005-0000-0000-0002-000000000000
attribute @s generic.movement_speed modifier remove 00000012-0000-0000-0001-000000000000
attribute @s generic.knockback_resistance modifier remove 00000012-0000-0000-0005-000000000100
attribute @s generic.movement_speed modifier remove 00000007-0000-0000-0003-000000000000
attribute @s generic.movement_speed modifier remove 00000003-0000-0000-0002-000000000000
attribute @s generic.movement_speed modifier remove 00000004-0000-0000-0002-000000000000
attribute @s generic.movement_speed modifier remove 00000006-0000-0000-0002-000000000000
attribute @s generic.movement_speed modifier remove 00000001-0000-0000-0001-000000000001
attribute @s generic.movement_speed modifier remove 00000001-0000-0000-0001-000000000002
attribute @s generic.movement_speed modifier remove 00000001-0000-0000-0001-000000000003
attribute @s generic.movement_speed modifier remove 00000001-0000-0000-0001-000000000004
attribute @s generic.movement_speed modifier remove 00000001-0000-0000-0001-000000000005
attribute @s generic.movement_speed modifier remove 00000001-0000-0000-0001-000000000006

execute if score @s ptid matches 1.. run scoreboard players operation @s tid = @s ptid
scoreboard players reset @s ptid
function ut:system/team/join

#cleanup
tag @s remove boss
tag @s remove dog_owner
tag @s remove playerathome
tag @s remove can_change_chr
tag @s remove parkour_win

scoreboard players reset @s dummy
scoreboard players reset @s bid
scoreboard players reset @s tbid
scoreboard players set @s trigger 0

#adv
execute if score -total gamesfinished matches 6.. run advancement grant @s only ut:other/mini/root
execute if score -total gamesfinished matches 9.. run advancement grant @s only ut:other/credit/root

#stat
effect clear @s
function ut:choose/lobby_x
execute if entity @s[tag=spectator] run function ut:choose/spectator