#By Nebulirion

execute unless score allow_tut info matches 1 run scoreboard players set allow_tut info 2
execute if score allow_tut info matches 1 run scoreboard players set allow_tut info 0
execute if score allow_tut info matches 2 run scoreboard players set allow_tut info 1

tag @a[tag=tut_p] add per_p
tag @a[tag=tut_pw] add per_p
tag @a[scores={tut_s=1..}] add per_p
execute if score allow_tut info matches 0 run function ut:lobby/tutorial/end
execute as @a[tag=per_p] run function ut:lobby/tutorial/quit
execute if score allow_tut info matches 0 run tellraw @a[tag=per_p] ["",{"translate":"pfx.info"},{"translate":"set.tut3"}]
tag @a remove per_p

execute if score allow_tut info matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.tut0"}]
execute if score allow_tut info matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.tut1"}]