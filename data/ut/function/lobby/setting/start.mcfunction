#By Nebulirion

scoreboard players set #preGame game 1

function ut:lobby/tutorial/end
function ut:lobby/credit/end
clear @a #ut:lobby_items[custom_data~{bakes:1b}]

function ut:system/clear_forceload

function ut:game/gotomap
tp @a[tag=!sy] @s
execute unless score -use map matches 1 unless score -use map matches 4 unless score -use map matches 9..10 unless score -use map matches 12..19 run effect give @a[scores={N=0..}] night_vision infinite 1 true
execute if score -use map matches 15 run time set 23500
kill @e[type=minecraft:firework_rocket]

function ut:game/countdown/c5
schedule function ut:game/countdown/c4 1s
schedule function ut:game/countdown/c3 2s
schedule function ut:game/countdown/c2 3s
schedule function ut:game/countdown/c1 4s
schedule function ut:game/start_pre 5s