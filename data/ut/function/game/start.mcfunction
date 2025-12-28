#By Nebulirion

function ut:game/start_basic

execute unless score -GameMode game matches 0..7 run scoreboard players set -GameMode game 1

execute if score -GameMode game matches 0 run function ut:game/test/start
execute if score -GameMode game matches 1 run function ut:game/arena/start
execute if score -GameMode game matches 2 run function ut:game/boss/start
execute if score -GameMode game matches 3 run function ut:game/kill/start
execute if score -GameMode game matches 4 run function ut:game/team/start
execute if score -GameMode game matches 5 run function ut:game/soul/start
execute if score -GameMode game matches 6 run function ut:game/dog/start
execute if score -GameMode game matches 7 run function ut:game/siege/start