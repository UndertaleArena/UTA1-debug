# by Nebulirion, arranged by SY91419
scoreboard players set #preGame game 1
scoreboard players set #preGameSiege game 1
function ut:game/siege/countdown/t5
schedule function ut:game/siege/countdown/t4 1s
schedule function ut:game/siege/countdown/t3 2s
schedule function ut:game/siege/countdown/t2 3s
schedule function ut:game/siege/countdown/t1 4s
schedule function ut:game/siege/countdown/tt5 5s
schedule function ut:game/siege/countdown/tt4 6s
schedule function ut:game/siege/countdown/tt3 7s
schedule function ut:game/siege/countdown/tt2 8s
schedule function ut:game/siege/countdown/tt1 9s
schedule function ut:game/siege/title_attack 10s
schedule function ut:game/siege/title_defend 5s