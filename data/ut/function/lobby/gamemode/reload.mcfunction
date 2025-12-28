#by Neb and SY91419 is kinda doing stuff too i guess

#
execute store result score -GameMode game run data get storage ut:modes Selected.Id
#
data modify entity @e[tag=lobby_text_gmn,limit=1] CustomName set from storage ut:modes Selected.Name
#
function ut:lobby/map/unlock_count
#
#execute if score -locked map matches 1 run function ut:lobby/map/reload_locked
#
#execute as @e[tag=lobby_strb] at @s run function ut:lobby/map/strb
#
tellraw @s [{"translate":"pfx.game"},{"translate":"cht.gmd0","with":[{"storage":"ut:modes","nbt":"Selected.Name","interpret":true}]}]
#
execute as @e[tag=lobby_menupos,limit=1] at @s positioned ~ ~-.5 ~ run function ut:lobby/menu/page3.x 