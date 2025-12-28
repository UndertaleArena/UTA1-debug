#hihi this is neb

###when finished all other rooms
execute if score @s tut_s10 matches 1 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.1.0"}]
execute if score @s tut_s10 matches 1 run advancement grant @s only ut:other/tut/tuto30
execute if score @s tut_s10 matches 2 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.2.0","with":[{"score": {"name": "@s", "objective": "gamesfinished"}}]}]
execute if score @s tut_s10 matches 3 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.3.1"}]
execute if score @s tut_s10 matches 3 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s10 matches 4 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.4.1"}]
execute if score @s tut_s10 matches 5 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.5.1"}]
execute if score @s tut_s10 matches 6 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.6.1","with":[{"translate": "cht.math", "with":[{"nbt": "RNGgenerator.Letters[23]","storage": "soul"},{"nbt": "RNGgenerator.Numbers[102]","storage": "soul"}]}]}]
execute if score @s tut_s10 matches 6 run advancement grant @s only ut:other/timer/level1
execute if score @s tut_s10 matches 7 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.7.1"}]
execute if score @s tut_s10 matches 7 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s10 matches 8 run tellraw @s ["",{"translate":"pfx.flowey"},{"translate":"stut.r10.dog"}]
execute if score @s tut_s10 matches 8 run scoreboard players set -talking_flower tut_st 1
execute if score @s tut_s10 matches 8 unless score @s mystery matches 1.. as @s at @s if entity @s run scoreboard players set @s[tag=!dog_is_next] mystery 1

execute if score @s tut_s10 matches 8 run scoreboard players set @s tut_s10 30