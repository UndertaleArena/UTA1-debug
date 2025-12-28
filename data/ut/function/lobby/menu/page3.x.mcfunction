#By Nebulirion

kill @e[tag=set_menuele_3]

execute if score -GameMode game matches 0 run function ut:lobby/menu/page3.0
execute if score -GameMode game matches 1 run function ut:lobby/menu/page3.1
execute if score -GameMode game matches 2 run function ut:lobby/menu/page3.2
execute if score -GameMode game matches 3 run function ut:lobby/menu/page3.3
execute if score -GameMode game matches 4 run function ut:lobby/menu/page3.4
execute if score -GameMode game matches 5 run function ut:lobby/menu/page3.5
execute if score -GameMode game matches 6 run function ut:lobby/menu/page3.6
execute if score -GameMode game matches 7 run function ut:lobby/menu/page3.7

function ut:lobby/gamerule/check