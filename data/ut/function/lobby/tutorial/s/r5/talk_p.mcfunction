#hihi this is neb

execute if score @s tut_s5 matches 0 if score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.f5","with":[{"translate":"stut.r5.0"}]}]
execute if score @s tut_s5 matches 0 unless score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.r1","with":[{"translate":"stut.r5.0"}]}]
#
execute if score @s tut_s5 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.1"}]
execute if score @s tut_s5 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.2"}]
execute if score @s tut_s5 matches 2 run scoreboard players set -talking_flower tut_st 3
execute if score @s tut_s5 matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.3"}]
execute if score @s tut_s5 matches 3 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s5 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.4"}]
execute if score @s tut_s5 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.5"}]
execute if score @s tut_s5 matches 6 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.6"}]
execute if score @s tut_s5 matches 7 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.7"}]
execute if score @s tut_s5 matches 8 run scoreboard players set -talking_flower tut_st 2
execute if score @s tut_s5 matches 8 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.8"}]
execute if score @s tut_s5 matches 9 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.9"}]
execute if score @s tut_s5 matches 10 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.10"}]
execute if score @s tut_s5 matches 11 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r5.11"}]
execute if score @s tut_s5 matches 11 run scoreboard players set -talking_flower tut_st 2
execute if score @s tut_s5 matches 12 unless score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f0"}]
execute if score @s tut_s5 matches 12 if score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f1"}]
execute if score @s tut_s5 matches 12 if score @s tut_sr matches ..18 run scoreboard players set @s tut_sr 18

execute if score @s tut_s5 matches 13..15 run scoreboard players set -talking_flower tut_st -1

scoreboard players add @s tut_s5 1
scoreboard players add @s tut_st 1
execute if score @s tut_s5 matches 16 run scoreboard players set @s tut_s5 0