#By Nebulirion

#Need:

tellraw @a [{"text":" "}]
tellraw @a [{"translate":"cht.line","color":"gold"}]
#
tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm1"}]
execute if entity @a[tag=winner] run tellraw @a ""
#
execute if score pc store matches 1 if entity @a[tag=winner] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm5","with":[{"selector":"@a[tag=winner_alive]","bold":false}]}]
execute if score pc store matches 2.. if entity @a[tag=winner] if entity @a[tag=winner_dead] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm4","with":[[{"selector":"@a[tag=winner_alive]","bold":false},", ",{"selector":"@a[tag=winner_dead]","color":"gray"}]]}]
execute if score pc store matches 2.. if entity @a[tag=winner] unless entity @a[tag=winner_dead] run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm4","with":[{"selector":"@a[tag=winner_alive]","bold":false}]}]
#
tellraw @a [{"translate":"cht.line","color":"gold"}]
tellraw @a [{"text":" "}]

execute as @a run function ut:system/stats/cal
#

tellraw @a[scores={S=1}] [{"translate":"cht.line","color":"gold"}]
# team origin
scoreboard players set #ffa_ store 0
execute store result score #ffa store run team list t1
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list t2
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list t3
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list t4
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list t5
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list t6
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list t7
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list t8
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list boss
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1
execute store result score #ffa store run team list nosoul
execute unless score #ffa store matches 0..1 run scoreboard players set #ffa_ store 1

execute if score #ffa_ store matches 1 run function ut:system/stats/stats
execute unless score #ffa_ store matches 1 run function ut:system/stats/ffa_stats
# 
tellraw @a[scores={S=1}] [{"translate":"cht.line","color":"gold"}]
tellraw @a[scores={S=1}] [{"text":" "}]