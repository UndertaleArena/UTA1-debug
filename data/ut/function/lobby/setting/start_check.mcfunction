#By Nebulirion

scoreboard players set allow_start store 1

function ut:game/count_players

###WARNING FOR 16+ PLAYERS
execute if score -PlayerCount game matches 17.. run tellraw @s [{"translate": "pfx.warning"},{"translate": "cht.set.wrn1"}]
###DONT START WITH MORE THAN 16 PLAYERS
#execute if score allow_start store matches 1 if score -PlayerCount game matches 17.. run tellraw @s [{"translate": "pfx.warning"},{"translate": "cht.set.wrn2"}]
#execute if score -PlayerCount game matches 17.. run scoreboard players set allow_start store 0

###DONT START WITH LESS THAN 2 TEAMS
execute if score allow_start store matches 1 unless score -TeamCount game matches 2.. run tellraw @s [{"translate": "pfx.warning"},{"translate": "cht.set.wrn3"}]
execute unless score -TeamCount game matches 2.. run scoreboard players set allow_start store 0

###DONT START BOSS MODE WITH TEAMS
execute if score allow_start store matches 1 if score -TeamMode game matches 1 if score -GameMode game matches 2 run tellraw @s [{"translate": "pfx.warning"},{"translate": "cht.set.wrn5"}]
execute if score -TeamMode game matches 1 if score -GameMode game matches 2 run scoreboard players set allow_start store 0

###CAN'T START IF MAP NOT UNLOCKED
execute if score allow_start store matches 1 if score -locked map matches 1 run tellraw @s [{"translate": "pfx.warning"},{"translate": "cht.set.wrn6"}]
execute if score -locked map matches 1 run scoreboard players set allow_start store 0

###DONT START FFA MAPS IN TEAM MODES
execute if score allow_start store matches 1 if score -GameMode game matches 4.. if data storage ut:maps Selected{Type:"ffa"} run tellraw @s [{"translate": "pfx.warning"},{"translate": "cht.set.wrn7"}]
execute if score -GameMode game matches 4.. if data storage ut:maps Selected{Type:"ffa"} run scoreboard players set allow_start store 0

###DONT START TEAM MAPS IN SPECIAL MODES
execute if score allow_start store matches 1 if score -GameMode game matches 7.. if data storage ut:maps Selected{Type:"team"} run tellraw @s [{"translate": "pfx.warning"},{"translate": "cht.set.wrn8"}]
execute if score -GameMode game matches 7.. if data storage ut:maps Selected{Type:"team"} run scoreboard players set allow_start store 0

###BUT I CAN DO ANYTHING
execute if score -GameMode game matches 0 run scoreboard players set allow_start store 1
execute if score no_start_check info matches 1 run scoreboard players set allow_start store 1

###END
execute if score allow_start store matches 1 run function ut:lobby/setting/start