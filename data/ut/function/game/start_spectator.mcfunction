#By Nebulirion

title @s actionbar ""

team leave @s
scoreboard players set @s tid 0
scoreboard players set @s ptid 0

tag @s remove respawning
tag @s remove play_game
tag @s remove tobechosen
tag @s remove playing
gamemode spectator @s
execute unless score @s tutorial matches 1.. run scoreboard players set @s tutorial 1

execute at @p[tag=playing] run tp @s[tag=!sy] @e[tag=arena_mid,limit=1,scores={maplock=1}]

#effects
function ut:player/effect