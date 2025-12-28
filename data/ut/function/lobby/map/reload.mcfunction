#by Neb and SY91419 is kinda doing stuff too i guess

#
execute store result score -use map run data get storage ut:maps Selected.Id
#
data modify entity @e[tag=lobby_text_mapn,limit=1] CustomName set from storage ut:maps Selected.Name
data modify entity @e[tag=lobby_text_mapc,limit=1] CustomName set from storage ut:maps Selected.PlayWith
data modify entity @e[tag=lobby_text_mapm,limit=1] CustomName set from storage ut:maps Selected.Creator
#
execute if score -locked map matches 1 run function ut:lobby/map/reload_locked
#
execute as @e[tag=lobby_strb] at @s run function ut:lobby/map/strb
#
execute unless score -locked map matches 1 run tellraw @s [{"translate":"pfx.game"},{"translate":"cht.map0","with":[{"storage":"ut:maps","nbt":"Selected.Name","interpret":true}]}]