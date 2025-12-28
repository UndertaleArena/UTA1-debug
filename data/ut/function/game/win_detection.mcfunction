#By Nebulirion

execute unless score #ended game matches 1 if score -GameMode game matches 1 run function ut:game/arena/win_detection
execute unless score #ended game matches 1 if score -GameMode game matches 2 run function ut:game/boss/win_detection
execute unless score #ended game matches 1 if score -GameMode game matches 3 run function ut:game/kill/win_detection
execute unless score #ended game matches 1 if score -GameMode game matches 4 run function ut:game/team/win_detection
execute unless score #ended game matches 1 if score -GameMode game matches 5 run function ut:game/soul/win_detection
execute unless score #ended game matches 1 if score -GameMode game matches 6 run function ut:game/dog/win_detection
execute unless score #ended game matches 1 if score -GameMode game matches 7 run function ut:game/siege/win_detection

execute unless score #ended game matches 1 if score -GameMode game matches 1.. run function ut:game/win_detection/main
