#hihi this is neb

execute if score @s tut_s3 matches 0 if score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.f5","with":[{"translate":"stut.r3.0"}]}]
execute if score @s tut_s3 matches 0 unless score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.r1","with":[{"translate":"stut.r3.0"}]}]
#
execute if score @s tut_s3 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r3.1"}]
execute if score @s tut_s3 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r3.2"}]
execute if score @s tut_s3 matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r3.3"}]
execute if score @s tut_s3 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r3.4"}]
execute if score @s tut_s3 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r3.5"}]
execute if score @s tut_s3 matches 6 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r3.6"}]
execute if score @s tut_s3 matches 7 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r3.7"}]
execute if score @s tut_s3 matches 8 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r3.8"}]
execute if score @s tut_s3 matches 9 unless score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f0"}]
execute if score @s tut_s3 matches 9 if score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f1"}]
execute if score @s tut_s3 matches 9 if score @s tut_sr matches ..12 run scoreboard players set @s tut_sr 12

execute if score @s tut_s3 matches 10..12 run scoreboard players set -talking_flower tut_st -1

scoreboard players add @s tut_s3 1
scoreboard players add @s tut_st 1
execute if score @s tut_s3 matches 13 run scoreboard players set @s tut_s3 0