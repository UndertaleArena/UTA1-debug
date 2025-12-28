#hihi this is neb

execute if score @s tut_s1 matches 0 if score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.f5","with":[{"translate":"stut.r1.0"}]}]
execute if score @s tut_s1 matches 0 unless score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.r1","with":[{"translate":"stut.r1.0"}]}]
#
execute if score @s tut_s1 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r1.1"}]
execute if score @s tut_s1 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r1.2"}]
execute if score @s tut_s1 matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r1.3"}]
execute if score @s tut_s1 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r1.4"}]
execute if score @s tut_s1 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r1.5"}]
execute if score @s tut_s1 matches 5 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s1 matches 6 unless score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f0"}]
execute if score @s tut_s1 matches 6 if score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f1"}]
execute if score @s tut_s1 matches 6 if score @s tut_sr matches ..6 run scoreboard players set @s tut_sr 6

execute if score @s tut_s1 matches 7..9 run scoreboard players set -talking_flower tut_st -1

scoreboard players add @s tut_s1 1
scoreboard players add @s tut_st 1
execute if score @s tut_s1 matches 10 run scoreboard players set @s tut_s1 0