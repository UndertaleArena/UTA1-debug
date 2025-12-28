#hihi this is neb

###when finished all other rooms
execute if score @s tut_s10 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.1.0"}]
execute if score @s tut_s10 matches 1 run advancement grant @s only ut:other/tut/tuto30
execute if score @s tut_s10 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.2.0","with":[{"score": {"name": "@s", "objective": "gamesfinished"}}]}]
execute if score @s tut_s10 matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.3.0"}]
execute if score @s tut_s10 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.4.0"}]
execute if score @s tut_s10 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.dog"}]
execute if score @s tut_s10 matches 5 run scoreboard players set -talking_flower tut_st 1

execute if score @s tut_s10 matches 6 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f0"}]
execute if score @s tut_s10 matches 7 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f1"}]
execute if score @s tut_s10 matches 8 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f2"}]
execute if score @s tut_s10 matches 9 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f3"}]
execute if score @s tut_s10 matches 9 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s10 matches 10 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f4"}]
execute if score @s tut_s10 matches 11 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f5"}]
execute if score @s tut_s10 matches 12 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f6"}]
execute if score @s tut_s10 matches 12 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s10 matches 13 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f7"}]
execute if score @s tut_s10 matches 14 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f8"}]
execute if score @s tut_s10 matches 15 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.f9"}]
execute if score @s tut_s10 matches 15 run scoreboard players set -talking_flower tut_st 1

execute if score @s tut_s10 matches 15 run scoreboard players set @s tut_s10 30