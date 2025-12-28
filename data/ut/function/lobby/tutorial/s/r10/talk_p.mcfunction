#hihi this is neb

execute if score @s tut_s10 matches 0 if score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.f5","with":[{"translate":"stut.r10.0"}]}]
execute if score @s tut_s10 matches 0 unless score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.r1","with":[{"translate":"stut.r10.0"}]}]
#
###when too early
execute unless score @s tut_sr matches 30.. run function ut:lobby/tutorial/s/r10/talk_p_0
execute if score @s tut_sr matches 30.. run function ut:lobby/tutorial/s/r10/talk_p_1
#
execute if score @s tut_s10 matches 31.. run scoreboard players set -talking_flower tut_st -1
#
execute if score @s tut_s10 matches 98 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.ff1"}]
execute if score @s tut_s10 matches 98 run scoreboard players set -talking_flower tut_st 0
execute if score @s tut_s10 matches 99 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.ff2"}]
execute if score @s tut_s10 matches 99 run scoreboard players set -talking_flower tut_st 2
#
scoreboard players add @s tut_s10 1
scoreboard players add @s tut_st 1