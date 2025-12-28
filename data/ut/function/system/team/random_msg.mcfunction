#By Nebulirion

tag @s add tr_player
execute as @e[tag=ray_team] if score @s ptid = @a[tag=tr_player,limit=1] tid run tag @s add tr_soul
execute as @a if score @s tid = @a[tag=tr_player,limit=1] tid run tag @s add tr_teammate

tellraw @s ["",{"translate":"pfx.game"},{"translate":"cht.tjr1","with":[{"selector":"@e[tag=tr_soul]"}]}]
tellraw @s ["",{"translate":"pfx.game"},{"translate":"cht.tjr2","with":[{"selector":"@a[tag=tr_teammate]"}]}]
tellraw @s ["",{"translate":"cht.tj7"},{"text":"§6[§r/tm§6]§r","clickEvent":{"action":"suggest_command","value":"/tm <text>"}},{"translate":"cht.tj8"}]

tag @e remove tr_soul
tag @a remove tr_teammate
tag @s remove tr_player