#By Nebulirion

scoreboard players operation pl store = PlayerLimit info
scoreboard players operation tl store = TeamLimit info
execute unless score pl store matches 1.. run scoreboard players set pl store 8
execute if score tl store matches ..1 run tellraw @s ["",{"translate":"pfx.warning"},{"translate":"cht.set4"}]
execute unless score tl store matches 2..8 run scoreboard players set tl store 8

team leave @a
scoreboard players set @a tid 0
scoreboard players set -tid tid 1
execute if entity @a[scores={tid=0},tag=player] run function ut:system/give_tid_loop

tag @a remove player

execute as @a run function ut:system/team/join