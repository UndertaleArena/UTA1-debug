#hihi this is neb

execute if score @s tut_s6 matches 0 if score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.f5","with":[{"translate":"stut.r6.0"}]}]
execute if score @s tut_s6 matches 0 unless score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.r1","with":[{"translate":"stut.r6.0"}]}]
#
execute if score @s tut_s6 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.1"}]
execute if score @s tut_s6 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.2"}]
execute if score @s tut_s6 matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.3"}]
execute if score @s tut_s6 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.4"}]
execute if score @s tut_s6 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.5"}]
execute if score @s tut_s6 matches 6 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.6"}]
execute if score @s tut_s6 matches 7 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.7"}]
execute if score @s tut_s6 matches 8 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.8"}]
execute if score @s tut_s6 matches 9 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.9"}]
execute if score @s tut_s6 matches 10 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.10"}]
execute if score @s tut_s6 matches 11 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.11"}]
execute if score @s tut_s6 matches 12 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r6.12"}]
execute if score @s tut_s6 matches 12 run scoreboard players set -talking_flower tut_st 2
execute if score @s tut_s6 matches 13 unless score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f0"}]
execute if score @s tut_s6 matches 13 if score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f1"}]
execute if score @s tut_s6 matches 13 if score @s tut_sr matches ..21 run scoreboard players set @s tut_sr 21

execute if score @s tut_s6 matches 14..16 run scoreboard players set -talking_flower tut_st -1

scoreboard players add @s tut_s6 1
scoreboard players add @s tut_st 1
execute if score @s tut_s6 matches 17 run scoreboard players set @s tut_s6 0