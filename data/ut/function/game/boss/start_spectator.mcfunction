#By Nebulirion

tag @s remove play_game
tag @s remove tobechosen
tag @s remove playing
gamemode spectator @s

tp @s @e[tag=arena_mid,limit=1,scores={maplock=1}]

#effects
function ut:player/effect