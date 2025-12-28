#hihi this is neb

execute unless score @s tut_st matches 1.. run scoreboard players set @s tut_st 1
execute if score @s tut_st matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.d1"}]
execute if score @s tut_st matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.d2"}]
execute if score @s tut_st matches 2 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_st matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.d3"}]
execute if score @s tut_st matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.d4"}]

scoreboard players add @s tut_st 1