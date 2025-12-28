#By Nebulirion

function ut:move/delete/restore

worldborder set 9999999

function ut:system/team/collision_off

execute unless score fun info matches 1..100 run function ut:fun

forceload add 272 1280
forceload add 259 1306 266 1361

tag @a remove no_firework
tag @a remove no_mc_dmg
tag @a remove void_immune
gamerule fallDamage false

scoreboard objectives setdisplay list gamesfinished
scoreboard objectives setdisplay below_name
###
#tag @a remove win_test_p
#tag @a remove win_test_t
#tag @a remove win_test_t2
#scoreboard players reset total_p tid
#scoreboard players reset test_team_p tid

#Clean Up
kill @e[type=item]
kill @e[tag=save]
kill @e[tag=move]
tag @e[tag=position_as] remove active
function ut:system/clear_schedule
###

###VERY IMPORTANT
execute if score -InGame game matches 1 run scoreboard players add #growcount store 1
execute if score #growcount store matches 1.. if entity @e[tag=root_as] run function ut:lobby/root/growall_multi

###Misc
function ut:lobby/map/unlock_count

###
function ut:lobby/tutorial/end
function ut:lobby/credit/end

scoreboard players set -LowPos y_pos 0

###Main
scoreboard players set -Enabled stat 0
scoreboard players set -InGame game 0
scoreboard players set dropItem gamerule 0
time set noon
difficulty normal

#position_as
scoreboard players reset * maplock

#players
kill @a[tag=gaster]
execute as @a[tag=!sy] at @s run function ut:game/lobby_player
function ut:player/bossbar/adjust

function ut:lobby/reload

execute if score allow_roomM info matches 1 if entity @a run function ut:lobby/minis/maze/generate

function ut:system/clear_forceload