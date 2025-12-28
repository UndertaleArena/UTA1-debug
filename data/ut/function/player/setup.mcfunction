#By Nebulirion
#
function ut:player/restore
function ut:move/player_loop/fullstop
#
function ut:player/love/1
scoreboard players set @s mpregen 100
scoreboard players set @s mpextra 0
scoreboard players set @s mlextra 0
scoreboard players set @s cdregen 100
scoreboard players set @s cdextra 0
scoreboard players set @s atk 100
scoreboard players set @s prj_speed 100
scoreboard players set @s willextra 0
scoreboard players set @s def 100
scoreboard players set @s unloadtime 0
scoreboard players set @s unloadtime_2nd 0
scoreboard players set @s mpcooldown 0
scoreboard players set @s cdcooldown 0
scoreboard players set @s passive_timer 0
#
scoreboard players set @s filter_l 0
scoreboard players set @s filter_r 0
#
scoreboard players reset @s eaid
scoreboard players reset @s evid
scoreboard players reset @s damage_resisted
scoreboard players reset @s damage_dealt
scoreboard players reset @s rc
#
xp set @s 1 levels
xp set @s 0 points
#
scoreboard players reset @s sid
scoreboard players reset @s kid
#
function ut:player/restore
function ut:player/attribute/speed
#
function ut:move/passive/setup
#
function ut:player/effect
#