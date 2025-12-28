#By Nebulirion

execute unless score border_mode info matches 1 run scoreboard players set border_mode info 2
execute if score border_mode info matches 1 run scoreboard players set border_mode info 0
execute if score border_mode info matches 2 run scoreboard players set border_mode info 1

execute if score border_mode info matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.bor0"}]
execute if score border_mode info matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.bor1"}]
execute if score border_mode info matches 1 run tellraw @s ["",{"translate":"pfx.warning"},{"translate":"set.bor2"}]