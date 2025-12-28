#hihi this is neb

execute if score @s tut_s4 matches 0 if score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.f5","with":[{"translate":"stut.r4.0"}]}]
execute if score @s tut_s4 matches 0 unless score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.r1","with":[{"translate":"stut.r4.0"}]}]
#
execute if score @s tut_s4 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.1"}]
execute if score @s tut_s4 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.2"}]
execute if score @s tut_s4 matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.3"}]
execute if score @s tut_s4 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.4"}]
execute if score @s tut_s4 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.5"}]
execute if score @s tut_s4 matches 6 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s4 matches 6 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.6"}]
execute if score @s tut_s4 matches 7 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.7"}]
execute if score @s tut_s4 matches 8 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.8"}]
execute if score @s tut_s4 matches 9 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.9"}]
execute if score @s tut_s4 matches 10 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r4.10"}]
execute if score @s tut_s4 matches 11 unless score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f0"}]
execute if score @s tut_s4 matches 11 if score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f1"}]
execute if score @s tut_s4 matches 11 if score @s tut_sr matches ..15 run scoreboard players set @s tut_sr 15

execute if score @s tut_s4 matches 12..14 run scoreboard players set -talking_flower tut_st -1

scoreboard players add @s tut_s4 1
scoreboard players add @s tut_st 1
execute if score @s tut_s4 matches 15 run scoreboard players set @s tut_s4 0