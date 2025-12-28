#hihi this is neb

execute if score @s tut_s9 matches 0 if score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.f5","with":[{"translate":"stut.r9.0"}]}]
execute if score @s tut_s9 matches 0 unless score @s tut_st matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate": "stut.r1","with":[{"translate":"stut.r9.0"}]}]
#
execute if score @s tut_s9 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.1"}]
execute if score @s tut_s9 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.2"}]
execute if score @s tut_s9 matches 2 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s9 matches 3 if score admin_mode info matches 0 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.3.0"}]
execute if score @s tut_s9 matches 3 if score admin_mode info matches 1 if entity @a[tag=ray_user,tag=admin] run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.3.0"}]
execute if score @s tut_s9 matches 3 if score admin_mode info matches 1 unless entity @a[tag=ray_user,tag=admin] run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.3.1"}]
execute if score @s tut_s9 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.4"}]
execute if score @s tut_s9 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.5"}]
execute if score @s tut_s9 matches 6 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.6"}]
execute if score @s tut_s9 matches 7 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.7"}]
execute if score @s tut_s9 matches 7 run scoreboard players set -talking_flower tut_st 3
execute if score @s tut_s9 matches 8 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.8"}]
execute if score @s tut_s9 matches 9 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.9"}]
execute if score @s tut_s9 matches 10 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r9.10"}]
execute if score @s tut_s9 matches 10 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s9 matches 11 unless score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f0"}]
execute if score @s tut_s9 matches 11 if score @s gamesfinished matches 30.. run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.f1"}]
execute if score @s tut_s9 matches 11 if score @s tut_sr matches ..30 run scoreboard players set @s tut_sr 30

execute if score @s tut_s9 matches 12..14 run scoreboard players set -talking_flower tut_st -1

scoreboard players add @s tut_s9 1
scoreboard players add @s tut_st 1
execute if score @s tut_s9 matches 15 run scoreboard players set @s tut_s9 0