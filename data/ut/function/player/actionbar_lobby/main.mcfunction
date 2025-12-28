#By Nebulirion

######STARTUP
data modify storage soul ActionList set value []
###PRE
######EFFECTS
function ut:player/actionbar_lobby/effect/main
data modify storage soul ActionList prepend value '{"text":"\\uF81B\\uF81A\\uF818\\uF813"}'
data modify storage soul ActionList append value '{"text":"\\uF83B\\uF83A\\uF838\\uF833"}'
#####MAIN
execute if entity @s[tag=spectator] run data modify storage soul ActionList append value '[{"translate":"lobby.ab0"}]'
execute unless score @s gamesfinished matches 2.. if score @s tutorial matches 1 if entity @s[tag=!spectator] run data modify storage soul ActionList append value '{"translate":"lobby.ab1","font":"minecraft:default"}'
execute unless score @s gamesfinished matches 2.. if score @s tutorial matches 2.. if entity @s[tag=!spectator] run data modify storage soul ActionList append value '{"translate":"lobby.ab2","font":"minecraft:default"}'
######ENDING
title @s actionbar [{"nbt":"ActionList[]","storage":"soul","interpret":true,"font":"minecraft:default","separator":""}]