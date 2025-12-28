#By Nebulirion
#
function ut:move/dog/free_p
#
execute if score -GameMode game matches 2 if score #hasBoss game matches 1 if entity @s[team=!nosoul,team=!boss] run tag @s remove playing
#
execute if entity @s[tag=playing] run scoreboard players set #endingsoon game 0
execute if entity @s[tag=playing] run schedule clear ut:game/win_detection/one_team_end
#
execute if entity @s[tag=playing] run function ut:player/leave_punishment
execute unless entity @s[tag=playing] run function ut:game/start_spectator
#
execute if score -GameMode game matches 3 run function ut:game/kill/p_sync_score
execute unless score -GameMode game matches 7 if score @s in_pregame matches 1 run function ut:game/pre_game_p_end
#
execute if score -GameMode game matches 7 unless score #preGame game matches 1 if score @s tbid matches 2 if score @s in_pregame matches 1 run function ut:game/pre_game_p_end
execute if score -GameMode game matches 7 unless score #preGameSiege game matches 1 if score @s tbid matches 1 if score @s in_pregame matches 1 run function ut:game/pre_game_p_end