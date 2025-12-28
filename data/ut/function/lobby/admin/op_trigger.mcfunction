#By Nebulirion

execute unless score admin_mode info matches 1 run scoreboard players set admin_mode info 2
execute if score admin_mode info matches 1 run scoreboard players set admin_mode info 0
execute if score admin_mode info matches 2 run scoreboard players set admin_mode info 1

tag @s add admin

execute if score admin_mode info matches 1 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.admin3"}]
execute if score admin_mode info matches 0 run tellraw @s ["",{"translate":"pfx.settings"},{"translate":"set.admin2"}]
execute if score admin_mode info matches 1 run tellraw @a ["",{"translate":"pfx.info"},{"translate":"set.admin1"},{"selector":"@a[tag=admin]"}]
execute if score admin_mode info matches 0 run tellraw @a ["",{"translate":"pfx.info"},{"translate":"set.admin0"}]