#hihi this is neb

execute if score @s tut_s8 matches 0 if score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.f5","with":[{"translate":"stut.r8.0"}]}]
execute if score @s tut_s8 matches 0 unless score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.r1","with":[{"translate":"stut.r8.0"}]}]
#
execute if score @s tut_s8 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.1"}]
execute if score @s tut_s8 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.2"}]
execute if score @s tut_s8 matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.3"}]
execute if score @s tut_s8 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.4"}]
execute if score @s tut_s8 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.5"}]
execute if score @s tut_s8 matches 5 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s8 matches 6 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.6"}]
execute if score @s tut_s8 matches 7 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.7"}]
execute if score @s tut_s8 matches 8 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.8"}]
execute if score @s tut_s8 matches 9 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.9"}]
execute if score @s tut_s8 matches 10 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.10"}]
execute if score @s tut_s8 matches 10 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s8 matches 11 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r8.11"}]
execute if score @s tut_s8 matches 12 unless score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f0"}]
execute if score @s tut_s8 matches 12 if score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f1"}]
execute if score @s tut_s8 matches 12 if score @s tut_sr matches ..27 run scoreboard players set @s tut_sr 27

execute if score @s tut_s8 matches 13..15 run scoreboard players set -talking_flower tut_st -1

scoreboard players add @s tut_s8 1
scoreboard players add @s tut_st 1
execute if score @s tut_s8 matches 16 run scoreboard players set @s tut_s8 0