#hihi this is neb

scoreboard players set #join tut_sr 3
execute if score @s gamesfinished >= #join tut_sr if score @s tut_sr >= #join tut_sr run function ut:lobby/tutorial/s/r1/join_suc
execute if score @s gamesfinished >= #join tut_sr unless score @s tut_sr >= #join tut_sr unless score @s tut_sr matches 1.. run tellraw @s ["",{"translate":"pfx.tut"},{"translate":"stut.fail"}]
execute if score @s gamesfinished >= #join tut_sr unless score @s tut_sr >= #join tut_sr unless score @s tut_sr matches 1.. run tellraw @s [{"translate":"stut.fail.0","color":"gray"}]
execute if score @s gamesfinished >= #join tut_sr unless score @s tut_sr >= #join tut_sr if score @s tut_sr matches 1.. run tellraw @s ["",{"translate":"pfx.tut"},{"translate":"stut.fail"}]
execute if score @s gamesfinished >= #join tut_sr unless score @s tut_sr >= #join tut_sr if score @s tut_sr matches 1.. run tellraw @s [{"translate":"stut.fail.1","color":"gray"}]
execute unless score @s gamesfinished >= #join tut_sr run tellraw @s ["",{"translate":"pfx.tut"},{"translate":"stut.fail"}]
execute unless score @s gamesfinished >= #join tut_sr run tellraw @s [{"translate":"stut.fail.2","color":"gray"}]