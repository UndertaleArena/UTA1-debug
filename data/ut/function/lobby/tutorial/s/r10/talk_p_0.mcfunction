#hihi this is neb

###when too early
execute if score @s tut_s10 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.1.1"}]
execute if score @s tut_s10 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.2.1"}]

execute if score @s tut_s10 matches 2 run scoreboard players set @s tut_s10 30