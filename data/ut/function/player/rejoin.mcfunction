#By Nebulirion

#me reconnected!
scoreboard players set @s rejoin 2

###IF INGAME: 
execute if score -InGame game matches 1 unless score @s gid = #gameID game run function ut:game/start_spectator
###MAYBE: punishment for leaving game
execute if score -InGame game matches 1 if score @s gid = #gameID game run function ut:player/reconnect

###UNLESS INGAME
execute unless score -InGame game matches 1 if score @s tutorial matches 1.. run function ut:game/lobby_player

function ut:player/bossbar/adjust