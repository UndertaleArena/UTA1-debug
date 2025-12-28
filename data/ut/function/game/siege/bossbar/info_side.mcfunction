# Origin by FocalSalt, edited by SY91419

# Round 1: Display Timer
execute if score #round game matches 1 unless score #timerlocker game matches 1 run function ut:game/siege/bossbar_update_t
# Round 2
execute if score #round game matches 2 \
if score -Round1Prograss siegegame matches 45000 run function ut:game/siege/bossbar_update_t
execute if score #round game matches 2 \
unless score -Round1Prograss siegegame matches 45000 run function ut:game/siege/bossbar_update_p
# Ended Game
execute if score #ended game matches 1 if score -Round2Prograss siegegame > -Round1Prograss siegegame run scoreboard players set #Progress siegegame 100
execute if score #ended game matches 1 run function ut:game/siege/bossbar_update